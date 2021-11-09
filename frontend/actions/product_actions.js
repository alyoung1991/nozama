import * as APIUtil from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';

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

const receiveReview = ({ review, average_rating, author }) => ({
    type: RECEIVE_REVIEW,
    review,
    average_rating,
    author
});

const receiveReviews = (reviews) => ({
    type: RECEIVE_REVIEWS,
    reviews
})

export const fetchProducts = (query) => (dispatch) => (
    APIUtil.fetchProducts(query)
        .then((products) => dispatch(receiveProducts(products)))
);

export const fetchProduct = (id) => (dispatch) => (
    APIUtil.fetchProduct(id)
        .then((payload) => dispatch(receiveProduct(payload)))
);

export const createReview = review => dispatch => (
    APIUtil.createReview(review).then(review => (
        dispatch(receiveReview(review))
    ))
);

export const fetchReviews = productId => dispatch => (
    APIUtil.fetchReviews(productId).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
)