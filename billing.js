function checkName() {
    n = document.getElementById('name');
    value = n.value;
    console.log(value);
    if (value == '') {
        console.log("Name cannot be empty ")
    }
    let pattern = /[^a-z A-Z]/g;
    result = value.match(pattern);
    if (result) {
        console.log("only letters are allowed");
    }
}

function checkPhone() {
    phone = document.getElementById('phone');
    value = phone.value;
    console.log(value);
    if (value == '') {
        console.log("Phone number cannot be empty ");
    }
    let pattern = /[^0-9]/g;
    result = value.match(pattern);
    if (result) {
        console.log("only numbers are allowed");
    }
}
