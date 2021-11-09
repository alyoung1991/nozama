import * as APIUtil from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

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

export const receiveReview = ({ review, average_rating, author }) => ({
    type: RECEIVE_REVIEW,
    review,
    average_rating,
    author
});

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