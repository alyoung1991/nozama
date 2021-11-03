export const fetchProducts = (data) => {
    return $.ajax({
        url: '/api/products',
        data
    });
}