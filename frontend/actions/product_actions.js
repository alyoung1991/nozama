import * as APIUtil from '../util/product_api_util';

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS';

const receiveProducts = (products) => ({
    type: RECEIVE_PRODUCTS,
    products
});

export const fetchProducts = () => (dispatch) => (
    APIUtil.fetchProducts()
        .then((products) => dispatch(receiveProducts(products)))
);