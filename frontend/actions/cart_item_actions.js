import * as APIUtil from '../util/cart_item_api_util';

export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';
export const RECEIVE_CART_ITEM = 'RECEIVE_CART_ITEM';
export const REMOVE_CART_ITEM = 'REMOVE_CART_ITEM';

const receiveCartItems = (cartItems) => ({
    type: RECEIVE_CART_ITEM,
    cartItems
});

const receiveCartItem = (cartItem) => ({
    type: RECEIVE_CART_ITEM,
    cartItem
});

const removeCartItem = (cartItem) => ({
    type: REMOVE_CART_ITEM,
    cartItem
});

export const fetchCartItems = () => (dispatch) => (
    APIUtil.fetchCartItems()
        .then((payload) => dispatch(receiveCartItems(payload)))
);

export const createCartItem = cart_item => dispatch => (
    APIUtil.createCartItem(cart_item)
        .then((cart_item) => dispatch(receiveCartItem(cart_item)))
);

export const deleteCartItem = (cart_item, cart_id) => dispatch => (
    APIUtil.destroyCartItem(cart_item, cart_id)
        .then(cart_item => dispatch(removeCartItem(cart_item)))
);