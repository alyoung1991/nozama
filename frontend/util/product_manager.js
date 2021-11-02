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
        
        // const productsObj = {};
        // products.forEach(product => productsObj[product.id] = product);

        // Object.values(this.products).forEach((product) => {
        //     console.log(!productsObj[product.productId]);
        //     if(!productsObj[product.productId]){
        //         this.removeProduct(product);
        //     }
        // });
    }
}

export default ProductManager;