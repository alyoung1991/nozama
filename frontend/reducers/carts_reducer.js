import { RECEIVE_CART, REMOVE_CART } from '../actions/cart_actions';

const cartsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CART:
            return Object.assign({}, action.cart);
        case REMOVE_CART:
            if(action.cart){
                return Object.assign({}, state, {[action.cart.id]: action.cart});
            } else{
                return Object.assign({}, state);
            }
        default:
            return state;
    }
};

export default cartsReducer;
