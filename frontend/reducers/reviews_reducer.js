import { RECEIVE_PRODUCT, RECEIVE_REVIEW } from '../actions/product_actions';

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.reviews);
        case RECEIVE_REVIEW:
            if(action.review){
                return Object.assign({}, state, {[action.review.id]: action.review});
            } else{
                return Object.assign({}, state);
            }
        default:
            return state;
    }
};

export default reviewsReducer;
