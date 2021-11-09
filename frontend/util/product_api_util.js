export const fetchProducts = (data) => (
    $.ajax({
        url: '/api/products',
        data
    })
);

export const fetchProduct = (id) => (
    $.ajax({
        method: 'GET',
        url: `/api/products/${id}`
    })
);

export const createReview = (review) => (
    $.ajax({
        method: 'POST',
        url: 'api/reviews',
        data: { review }
    })
);