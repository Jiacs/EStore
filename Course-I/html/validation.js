function validateName(name, errorMessageElement) {
    if (name !== '') {
        errorMessageElement.textContent = "";
        return true;
    } else {
        errorMessageElement.textContent = "Name cannot be empty!";
        return false;
    }
}

function validateEmail(email, errorMessageElement){
    if (email !== '') {
        errorMessageElement.textContent = "";
        return true;
    } else {
        errorMessageElement.textContent = "Email cannot be empty!";
        return false;
    }
}

function validatePassword(password, reenterPassword, errorMessageElement){
    if (password === reenterPassword && password !== '') {
        errorMessageElement.textContent = "";
        return true;
    } else {
        errorMessageElement.textContent = "The entered passwords do not match!";
        return false;
    }
}

function unavaliableDate(errorMessageElement)
{
    errorMessageElement.textContent = "The date you choose is unavaliable!";
}