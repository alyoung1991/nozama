import * as APIUtil from '../util/cart_api_util';

export const RECEIVE_CART = 'RECEIVE_CART';
export const REMOVE_CART = 'REMOVE_CART';

const receiveCart = (cart) => ({
    type: RECEIVE_CART,
    cart
});

const removeCart = (cart) => ({
    type: REMOVE_CART,
    cart
});

export const fetchCart = (id, sessionId) => (dispatch) => (
    APIUtil.fetchCart(id, sessionId)
        .then((payload) => dispatch(receiveCart(payload)))
);

export const createCart = (cart, sessionId) => dispatch => (
    APIUtil.createCart(cart, sessionId)
        .then((cart) => dispatch(receiveCart(cart)))
);

export const deleteCart = cart => dispatch => (
    APIUtil.emptyCart(cart)
        .then(cart => dispatch(removeCart(cart)))
);