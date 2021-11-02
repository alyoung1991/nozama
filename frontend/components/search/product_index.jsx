import React from "react";
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
    // componentDidMount(){
    //     this.props.fetchProducts();
    // }

    render(){
        return(
            <ul>
                {this.props.products.map((product) => {
                    return <li key={product.id}><ProductIndexItem product={product} /></li>
                })}
            </ul>
        );
    }
}

export default ProductIndex;