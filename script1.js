function viewProduct(id, name, price, description, image) {
    const product = {
        id: id,
        name: name,
        price: price,
        description: description,
        image: image
    };
    localStorage.setItem("product", JSON.stringify(product));
    window.location.href = "product.html";
}
