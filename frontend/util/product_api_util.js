export const fetchProducts = () => {
    return $.ajax({
        url: '/api/products'
    });
}