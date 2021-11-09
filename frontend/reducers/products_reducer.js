import { RECEIVE_PRODUCTS, RECEIVE_PRODUCT, RECEIVE_REVIEW } from "../actions/product_actions";

const productsReducer = (state = {}, action) => {
    Object.freeze(state);

    switch(action.type){
        case RECEIVE_PRODUCTS:
            return action.products
        case RECEIVE_PRODUCT:
            const newProduct = { [action.product.id]: action.product };
            return Object.assign({}, state, newProduct);
        case RECEIVE_REVIEW:
            const { review, average_rating, total_reviews } = action;
            const newState = Object.assign({}, state);
            newState[review.product_id].reviewIds.push(review.id);
            newState[review.product_id].average_rating = average_rating;
            newState[review.product_id].total_reviews = total_reviews;
            return newState;
        default:
            return state;
    }
}

export default productsReducer;