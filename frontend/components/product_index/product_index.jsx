import React from "react";
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
    render(){
        return(
            <div className="products-container">
                {this.props.products.map((product) => {
                    return <ProductIndexItem key={product.id} product={product} />
                })}
            </div>
        );
    }
}

export default ProductIndex;