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

export const fetchReview = (reviewId) => (
    $.ajax({
        method: 'GET',
        url: `api/reviews/${reviewId}`
    })
);

export const createReview = (review) => (
    $.ajax({
        method: 'POST',
        url: 'api/reviews',
        data: { review }
    })
);

export const updateReview = (review) => (
    $.ajax({
        method: 'PATCH',
        url: `api/reviews/${review.id}`,
        data: {review}
    })
);

export const destroyReview = (review) => (
    $.ajax({
        method: 'DELETE',
        url: `api/reviews/${review.id}`
    })
);

export const fetchAuthor = (userId) => (
    $.ajax({
        method: 'GET',
        url: `api/users/${userId}`,
    })
);