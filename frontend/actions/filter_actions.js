import { fetchProducts } from './product_actions';

export const UPDATE_SEARCH_QUERY = 'UPDATE_SEARCH_QUERY';

const updateSearchQuery = (filter, value) => ({
    type: UPDATE_SEARCH_QUERY,
    filter,
    value
});

export const updateFilter = (filter, value) => (dispatch, getState) => {
  dispatch(updateSearchQuery(filter, value));
  return fetchProducts(getState().ui.filters)(dispatch);
};