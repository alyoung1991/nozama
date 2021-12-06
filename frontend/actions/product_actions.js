import * as APIUtil from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';

const receiveProducts = (products) => ({
    type: RECEIVE_PRODUCTS,
    products
});

const receiveProduct = ({product, reviews, authors}) => ({
    type: RECEIVE_PRODUCT,
    product,
    reviews,
    authors
});

const receiveReviews = (reviews) => ({
    type: RECEIVE_REVIEWS,
    reviews
});

const receiveReview = ({ review, average_rating, author, total_reviews }) => ({
    type: RECEIVE_REVIEW,
    review,
    average_rating,
    author,
    total_reviews
});

const removeReview = (review) => ({
    type: REMOVE_REVIEW,
    review
});


export const fetchProducts = (query) => (dispatch) => (
    APIUtil.fetchProducts(query)
        .then((products) => dispatch(receiveProducts(products)))
);

export const fetchProduct = (id) => (dispatch) => (
    APIUtil.fetchProduct(id)
        .then((payload) => dispatch(receiveProduct(payload)))
);

export const fetchReviews = (productId) => (dispatch) => (
    APIUtil.fetchReviews(productId)
        .then((reviews) => dispatch(receiveReviews(reviews)))
);

export const fetchReview = (reviewId) => (dispatch) => (
    APIUtil.fetchReview(reviewId)
        .then((review) => dispatch(receiveReview(review)))
);

export const createReview = review => dispatch => (
    APIUtil.createReview(review)
        .then(review => dispatch(receiveReview(review)))
);

export const updateReview = review => dispatch => (
    APIUtil.updateReview(review)
        .then(review => dispatch(receiveReview(review)))
);

export const deleteReview = review => dispatch => (
    APIUtil.destroyReview(review)
        .then(review => dispatch(removeReview(review)))
);