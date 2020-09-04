const productsTable = document.querySelector('#products-table');
const cartTable = document.querySelector('#cartTable');
const createSaleForm = document.querySelector('#createSaleForm');
const errorSectionForm = document.querySelector('#js-requests-messages');
const userid = document.querySelector('#user-id').value;

if (productsTable) {
    productsTable.addEventListener('click', addToCartOneProduct);
    cartTable.addEventListener('click', cartEvents);
    createSaleForm.addEventListener('submit', storeSale);
}


/*
* Verify the fields in the form
* fields contains
* index 0 --- products list
* index 1 --- rfc field
* index 2 --- total amount
*
* returns and array
* */
function verifyFields(fields) {
    let verificationErrors = [];

    if (fields[0].length === 0) {
        verificationErrors.push('Belum ada transaksi');
    }
    if (fields[1] === '') {
        verificationErrors.push('Masukan Pelanggan');
    }
    if (fields[2] == 0) {
        verificationErrors.push('Mauskan produk untuk memulai transaksi penjualan');
    }
    return verificationErrors;
}

/*
* Store the sale and send a AJAX request to store the data
* */
function storeSale(e) {
    e.preventDefault();
    const route = '/sales';

    // Get all the fields and values
    let products = document.querySelectorAll('.product');
    let clientRfc = document.querySelector('#rfc').value;
    let productArray = [];
    let token = document.getElementsByName('_token')[0].value;
    let cartTotal = document.querySelector('#cartTotal').innerText;

    //Fill the product array with every product data
    products.forEach((product, index) => {
        let productId = product.children[0].innerText;
        let productName = product.children[1].innerText;
        let productAmount = product.children[2].children[0].children[1].innerText;
        productArray.push({
            'id': productId,
            'name': productName,
            'amount': productAmount
        });
    });

    //Create a fields variable to passes the data to verifyFields method
    let fields = [productArray, clientRfc, cartTotal];
    //Save the array with all the errors found
    let verification = verifyFields(fields);

    if (verification.length === 0) {
        // //Create the form data
        const formData = new FormData();
        //Fill the formdata
        formData.append('rfc', clientRfc);
        formData.append('products', JSON.stringify(productArray));
        formData.append('total', cartTotal);
        formData.append('_token', token);
        formData.append('id', userid);

        //Create the AJAX request
        const xhr = new XMLHttpRequest();
        xhr.open('POST', route, true);
        //Header with the CSRF protection
        xhr.setRequestHeader('X-CSRF-TOKEN', token);
        //Header specifying AJAX request
        xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

        xhr.onload = function () {
            //Created
            if (this.status === 201) {
                showRequestsMessages('Transaksi sukses', 'success');
                resetCart();
                createSaleForm.reset();
                location.reload();
            }
            //Backend verification errors
            if (this.status === 422) {
                let response = JSON.parse(this.response);
                let errors = response.errors;

                if (errors.rfc) {
                    showRequestsMessages('Pilih pelanggan dahulu', 'danger');
                }

                if (errors.total) {
                    showRequestsMessages('Masukan qty jumlah' +
                        ' producto', 'danger');
                }
            }
            //Server errors
            if (this.status === 500) {
                showRequestsMessages('' +
                    ' Contact Developer Admin', 'warning');
            }
        };
        //Send the information
        xhr.send(formData);
    } else {
        //Map the errors in the client
        verification.forEach((error) => {
            showRequestsMessages(error, 'danger');
        } )
    }
}

/*
* Map all the messages in the client
* Message needed
* Level ---- bootstrap alert class color
* */
function showRequestsMessages(message, level) {
    let html = `
    <div class="alert alert-${level}">
        ${message}
    </div>
    `;
    errorSectionForm.innerHTML += html;
    setTimeout(() => {
        errorSectionForm.innerHTML = '';
    }, 3500)
}

/*
* Deletes all the elements in the cart table
* */
function resetCart() {
    while(cartTable.childNodes.length > 0) {
        cartTable.childNodes.forEach((e) => {
            e.remove();
        });
    }

    document.querySelector('#cartTotal').innerText = '0';

}

/*
* Subtract one by one the amount of product or
* add one by one the amount of product
* */
function modifyAmountOfProduct(e, modifier) {
    e.preventDefault();
    //Get the current amount of product
    let amountOfProductNumeric = parseFloat(e.target.parentElement.childNodes[3].innerText);
    //Get the element with the amount of product
    let amountOfProductElement = e.target.parentElement.childNodes[3];
    //Get the price of the product
    let productPrice = parseFloat(e.target.dataset.price);
    // Create a object for update the total
    let productObject = {
        'id': e.target.dataset.id,
        'name': e.target.dataset.name,
        'left': e.target.dataset.left,
        'price': productPrice
    };

    //The default value for every product added to the cart
    let finalAmount = 1;

    //Verify which modifier is and update the total using the product information
    if (modifier === '+') {
        finalAmount = amountOfProductNumeric + 1;
        updateTotal(productObject, '+');
    }

    if (modifier === '-') {
        finalAmount = amountOfProductNumeric - 1;
        updateTotal(productObject, '-');
    }

    if (finalAmount === 0) {
        e.target.parentElement.parentElement.parentElement.remove();
        fillTableProducts(productObject);
    }
    amountOfProductElement.innerText = finalAmount;
}


/*
* Add the product selected in table products to the cart, update the total and
* delete it from products table
* */
function addToCartOneProduct(e) {
    e.preventDefault();

    let btnAdd = e.target;

    if (btnAdd.classList[0] === 'btn') {
        //Create an object to handle the creation later
        let product = {
            'id': btnAdd.dataset.id,
            'name': btnAdd.dataset.name,
            'left': btnAdd.dataset.left,
            'price': btnAdd.dataset.price
        };

        updateTotal(product, '+');

        //Get the whole row of a product
        let productRow = btnAdd.parentElement.parentElement;

        //Append the new product to the cart table
        cartTable.innerHTML += `
        <tr class="product">
            <td class="productId">${product.id}</td>
            <td>${product.name}</td>
            <td class="productControls">
                <p>
                <button
                         data-name="${product.name}"
                         data-id="${product.id}"
                         data-price="${product.price}"
                         data-left="${product.left}"
                class="sum btn btn-sm btn-primary">+</button>
                <span class="productAmount text-bold">1</span>
                <button
                         data-name="${product.name}"
                         data-id="${product.id}"
                         data-price="${product.price}"
                         data-left="${product.left}"
                class="subs btn btn-sm btn-warning">-</button>
                </p>
            </td>
            <td>
                 <button class="btn btn-danger">
                    <i class="fas fa-trash-alt delete"
                         data-name="${product.name}"
                         data-id="${product.id}"
                         data-price="${product.price}"
                         data-left="${product.left}"
                    ></i>
                 </button>
             </td>
        </tr>
		
        `;
        //Remove the product selected in the table products
        productRow.remove();
    }
}


/*
* Update the cart total depends on the modifier
* */
function updateTotal(product, modifier) {
    //Get the total element
    let total = document.querySelector('#cartTotal');
    //Default value for total
    let totalUpdated = 0;
    //Verify which modifier is and update the total
    if (modifier === '-') {
        totalUpdated = parseFloat(product.price) - parseFloat(total.innerText);
    }
    if (modifier === '+') {
        totalUpdated = parseFloat(product.price) + parseFloat(total.innerText);
    }

    //Make amounts positive
    if (totalUpdated < 0) {
        totalUpdated *= -1;
    }

    total.innerText = totalUpdated;

}

/*
* Removes the product of cart table and added again to products table
* */
function deleteProductCart(e) {
    e.preventDefault();
    let btnDelete = e.target;
    //Create the product object
    let product = {
        'id': btnDelete.dataset.id,
        'name': btnDelete.dataset.name,
        'left': btnDelete.dataset.left,
        'price': btnDelete.dataset.price
    };

    updateTotal(product, '-');

    //Get the whole row of a product
    let productRow = btnDelete.parentElement.parentElement.parentElement;
    //Add the product again to the table products
    fillTableProducts(product);
    productRow.remove();
}

/*
* Handles the creation of a new row in the products table
* Receives the product
* */
function fillTableProducts(product) {
    //Create the row
    let row = `
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>
               <button class="btn btn-success btn-sm"
                       data-name="${product.name}"
                       data-price="${product.price}"
                       data-id="${product.id}"
                       data-left="${product.left}"
               >
                  <i class="fas fa-plus"></i>
              Menambahkan
               </button>
            </td>
        </tr>
		`;

    productsTable.innerHTML += row;
}

/*
* Handles the events, subtraction, addition, delete
* */
function cartEvents(e) {
    e.preventDefault();
    if (e.target.classList[2] === 'delete') {
        deleteProductCart(e);
    }

    if (e.target.classList[0] === 'sum') {
        modifyAmountOfProduct(e, '+');
    }

    if (e.target.classList[0] === 'subs') {
        modifyAmountOfProduct(e, '-');
    }

}
