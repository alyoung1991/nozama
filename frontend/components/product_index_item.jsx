import React from "react";

class ProductIndexItem extends React.Component {
    render(){
        const {name, description, price, picture_url} = this.props.product;
        return(
            <div>
                <p>{name}</p>
                <p>{description}</p>
                <p>${price}</p>
                <img src={picture_url} alt={name} />
            </div>
        )
    }
}

export default ProductIndexItem;