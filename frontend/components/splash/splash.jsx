import React from 'react';

class Splash extends React.Component {
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(department){
        document.body.scrollTop = document.documentElement.scrollTop = 0;
        this.props.history.push({
            pathname: '/products/',
            search: `q=+d=${department}`
        });
        this.props.updateFilter('department', department);
    }

    render(){
        return(
            <div className="splash-container">
                <div className="carousel">
                    <img src={window.carousel1} alt="carousel-img" />
                </div>

                <div className="splash-cards">
                    <div className="splash-cards-container">
                        <div className="splash-card">
                            <div className="splash-card-heading">Smart Home Devices</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/150"><img className="splash-card-image" src='https://m.media-amazon.com/images/I/81cgyvKpajS._AC_SL1500_.jpg' alt="Smart-home-img" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Nozama Recommended</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">34</div>
                                    <div className="deal-cents">99</div>
                                </div>
                                <div className="original-price">$39.99</div>
                            </div>
                            <a href="/#/products/150"><div className="splash-card-info">Echo Dot with Clock & Bluetooth Color bulb</div></a>
                            <div onClick={() => this.handleClick("Smart Home")} className="splash-card-link">Shop all Smart Home</div>
                        </div>
                        <div className="splash-card">
                            <div className="splash-card-heading">Deal of the Day</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/108"><img className="splash-card-image" src={window.banana} alt="I called it banana" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Deal of the Day</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">1</div>
                                    <div className="deal-cents">99</div>
                                </div>
                                <div className="original-price">$3.95</div>
                            </div>
                            <a href="/#/products/108"><div className="splash-card-info">Banana</div></a>
                            <a href="/#/products/108" className="splash-card-link">See this deal</a>
                        </div>
                        <div className="splash-card">
                            <div className="splash-card-heading">They get two paws up</div>
                            <div className="sub-card-container">
                                <div className="sub-card">
                                    <a href="/#/products/136"><img className="sub-card-img" src='https://m.media-amazon.com/images/I/81O7mf19NeL._AC_SL1500_.jpg'></img></a>
                                </div>
                                <div className="sub-card">
                                    <a href="/#/products/137"><img className="sub-card-img" src='https://m.media-amazon.com/images/I/712wGaV5tjL._AC_SL1500_.jpg'></img></a>
                                </div>
                                <div className="sub-card">
                                    <a href="/#/products/139"><img className="sub-card-img" src='https://m.media-amazon.com/images/I/716vTTnfVfL._AC_SL1500_.jpg'></img></a>
                                </div>
                                <div className="sub-card">
                                    <a href="/#/products/142"><img className="sub-card-img" src='https://m.media-amazon.com/images/I/81IefliREvL._AC_SL1500_.jpg'></img></a>
                                </div>
                            </div>
                            <div onClick={() => this.handleClick("Pet Supplies")} className="splash-card-link">Shop all Pet Supplies</div>
                        </div>
                        <div className="double-splash-card">
                            <div className="sub-splash-card">
                                <div className="splash-card-heading">Let us do the shopping</div>
                                <div className="splash-card-info">Free 1-hour grocery pickup from Whole Foods Market included with Prime</div>
                                <div onClick={() => this.handleClick("Grocery & Gourmet Food")} className="splash-card-link">Shop all Groceries</div>
                            </div>
                            <div className="sub-splash-card hidden-card"></div>
                        </div>
                        <div className="splash-card">
                            <div className="splash-card-heading">Japan Store</div>
                            <div className="lg-splash-card-image-container">
                                <img className="lg-splash-card-image" src='https://images-na.ssl-images-amazon.com/images/G/01/jp/JAPAN-STORE/bnr/JS_Single-Category-Card_758x608._SY608_CB653717870_.jpg' alt="japan-store-pic" />
                            </div>
                            <div onClick={() => this.handleClick("Home & Kitchen")} className="splash-card-link">Shop more Home & Kitchen</div>
                        </div>
                        <div className="splash-card">
                            <div className="splash-card-heading">Sports & Fitness</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/156"><img className="splash-card-image" src='https://m.media-amazon.com/images/I/51I1CmBZkjL._AC_SL1500_.jpg' alt="Sport-Fitness-gift-img" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Nozama Recommended</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">22</div>
                                    <div className="deal-cents">46</div>
                                </div>
                                <div className="original-price">$29.95</div>
                            </div>
                            <a href="/#/products/156"><div className="splash-card-info">Hydro Flask Water Bottle</div></a>
                            <div onClick={() => this.handleClick("Sports & Outdoors")} className="splash-card-link">Shop all Sports & Fitness</div>
                        </div>
                        <div className="splash-card hide-on-shrink">
                            <div className="splash-card-heading">It's hard to resist</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/109"><img className="splash-card-image" src={window.potato} alt="I called it Potato" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Deal of the Day</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">1</div>
                                    <div className="deal-cents">95</div>
                                </div>
                                <div className="original-price">$2.95</div>
                            </div>
                            <a href="/#/products/109"><div className="splash-card-info">Potato</div></a>
                            <div onClick={() => this.handleClick("Grocery & Gourmet Food")} className="splash-card-link">Shop all Groceries</div>
                        </div>
                        <div className="splash-card hide-on-shrink">
                            <div className="splash-card-heading">Level up your Gaming</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/79"><img className="splash-card-image" src='https://m.media-amazon.com/images/I/81Wx7hw9vwL._AC_SL1500_.jpg' alt="Gaming-pc-img" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Nozama Recommended</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">1,083</div>
                                    <div className="deal-cents">48</div>
                                </div>
                                <div className="original-price">$1,199.90</div>
                            </div>
                            <a href="/#/products/79"><div className="splash-card-info">Gamer Xtreme VR Gaming PC</div></a>
                            <div onClick={() => this.handleClick("Computers")} className="splash-card-link">Shop more Computers</div>
                        </div>
                        <div className="splash-card appear-on-grow">
                            <div className="splash-card-heading">Shop tech, for less</div>
                            <div className="lg-splash-card-image-container">
                                <img className="lg-splash-card-image" src='https://images-na.ssl-images-amazon.com/images/G/01/US-hq/2021/img/Consumer_Electronics/XCM_CUTTLE_1366283_1887876_US_372x232_2X_en_US._SY232_CB639658957_.jpg' alt="shop-tech-pic" />
                            </div>
                            <div onClick={() => this.handleClick("Electronics")} className="splash-card-link">Shop more Electronics</div>
                        </div>
                        <div className="splash-card appear-on-grow">
                            <div className="splash-card-heading">Garden & Outdoor</div>
                            <div className="splash-card-image-container">
                                <a href="/#/products/97"><img className="splash-card-image" src='https://m.media-amazon.com/images/I/818eZyswMmL._AC_SL1500_.jpg' alt="garden-outdoor-img" /></a>
                            </div>
                            <div className="black-friday-deal-label">
                                <div>Nozama Recommended</div>
                            </div>
                            <div className="splash-card-price">
                                <div className="deal-price">
                                    <div className="dollar-sign">$</div>
                                    <div className="deal-dollar">15</div>
                                    <div className="deal-cents">79</div>
                                </div>
                                <div className="original-price">$18.99</div>
                            </div>
                            <a href="/#/products/97"><div className="splash-card-info">Espoma AP8 8-Quart Organic Potting Mix</div></a>
                            <div onClick={() => this.handleClick("Garden & Outdoor")} className="splash-card-link">Shop more Garden & Outdoor</div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default Splash;