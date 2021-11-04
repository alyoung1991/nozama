import React from "react";
import { withRouter } from 'react-router-dom';

class ProductIndexItem extends React.Component {
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(){
        const productId = this.props.product.id;
        this.props.history.push(`/products/${productId}`);
    }

    render(){
        const {name, description, price, picture_url} = this.props.product;
        return(
            <div onClick={this.handleClick}>
                <p>{name}</p>
                <p>{description}</p>
                <p>${price}</p>
                <img className="product-index-image" src={picture_url} alt={name} />
            </div>
        );
    }
}

export default withRouter(ProductIndexItem);