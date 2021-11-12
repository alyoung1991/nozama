import React from 'react';

const Splash = () => {
    return(
        <div className="splash-container">
            <div className="carousel">
                <img src={window.carousel1} alt="carousel-img" />
            </div>

            <div className="splash-cards">
                <div className="splash-cards-container">
                    <div className="splash-card">
                        <div className="splash-card-heading">You can call it anything!</div>
                        <div className="splash-card-image-container">
                            <img className="splash-card-image" src={window.potato} alt="I called it Potato" />
                        </div>
                        <div className="black-friday-deal-label">
                            <div>Early Black Friday</div>
                        </div>
                        <div className="splash-card-price">
                            <div className="deal-price">
                                <div className="dollar-sign">$</div>
                                <div className="deal-dollar">1</div>
                                <div className="deal-cents">95</div>
                            </div>
                            <div className="original-price">$2.95</div>
                        </div>
                        <div className="splash-card-info">Potato</div>
                        <div className="splash-card-link">Shop for some more potato</div>
                    </div>
                    <div className="splash-card">
                        <div className="splash-card-heading">Early Black Friday deal</div>
                        <div className="splash-card-image-container">
                            <img className="splash-card-image" src={window.banana} alt="I called it banana" />
                        </div>
                        <div className="black-friday-deal-label">
                            <div>Early Black Friday</div>
                        </div>
                        <div className="splash-card-price">
                            <div className="deal-price">
                                <div className="dollar-sign">$</div>
                                <div className="deal-dollar">1</div>
                                <div className="deal-cents">99</div>
                            </div>
                            <div className="original-price">$3.95</div>
                        </div>
                        <div className="splash-card-info">Banana</div>
                        <div className="splash-card-link">Shop all early Black Friday deals</div>
                    </div>
                    <div className="splash-card">
                        <div className="splash-card-heading">Holiday deals</div>
                        <div className="sub-card-container">
                            <div className="sub-card"></div>
                            <div className="sub-card"></div>
                            <div className="sub-card"></div>
                            <div className="sub-card"></div>
                        </div>
                        <div className="splash-card-link">Shop all deals from top brands</div>
                    </div>
                    <div className="double-splash-card">
                        <div className="sub-splash-card">
                            <div className="splash-card-heading">Let us do the shopping</div>
                            <div className="splash-card-info">Free 1-hour grocery pickup from Whole Foods Market included with Prime</div>
                            <div className="splash-card-link">Shop Whole Foods Market</div>
                        </div>
                        <div className="sub-splash-card hidden-card"></div>
                    </div>
                    <div className="splash-card"></div>
                    <div className="splash-card"></div>
                    <div className="splash-card hide-on-shrink"></div>
                    <div className="splash-card hide-on-shrink"></div>
                    <div className="splash-card appear-on-grow"></div>
                    <div className="splash-card appear-on-grow"></div>
                </div>
            </div>
        </div>
    )
}

export default Splash;