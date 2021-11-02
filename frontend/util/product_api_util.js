export const fetchProducts = (data) => {
    console.log(data);
    return $.ajax({
        url: '/api/products',
        data
    });
}