import React from 'react';
import ProductIndex from './product_index';
import SearchBar from './search_bar';

const Search = ({products, fetchProducts, updateSearchQuery}) => (
    <div>
        <SearchBar products={products} updateSearchQuery={updateSearchQuery} />
        <ProductIndex products={products} fetchProducts={fetchProducts} />
    </div>
)

export default Search;