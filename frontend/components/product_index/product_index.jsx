import React from "react";
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
    render(){
        const searchTerm = this.props.location.search.substring(3, this.props.location.search.indexOf('+'));
        console.log(this.props.location.search.substring(3, this.props.location.search.indexOf('+')));
        const searchTermDisplay = <span>&nbsp;for <span className="search-term-display">"{searchTerm}"</span></span>;
        return(
            <div className="product-index-container">
                <div className="products-index-top-bar">{this.props.products.length} results{(searchTerm != '' ? searchTermDisplay : '')} </div>
                 <div className="products-container">
                    {this.props.products.map((product) => {
                        return <ProductIndexItem key={product.id} product={product} />
                    })}
                </div>
            </div>
           
        );
    }
}

export default ProductIndex;