class ProductManager {
    constructor(searchQuery){
        this.searchQuery = searchQuery;
        this.products = {};
    }

    updateProducts(products){
        products.forEach(product => {
            if(!this.products[product.id]){
                this.products[product.id] = product;
            }
        });
    }
}

export default ProductManager;