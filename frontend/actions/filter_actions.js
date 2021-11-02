export const UPDATE_SEARCH_QUERY = 'UPDATE_SEARCH_QUERY';

const updateSearchQuery = (query) => ({
    type: UPDATE_SEARCH_QUERY,
    query
});

export function updateFilter(query) {
  return (dispatch) => {
    dispatch(updateSearchQuery(query));
    return fetchProducts(query)(dispatch);
  };
}