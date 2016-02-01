<cfsetting enablecfoutputonly="true">
<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />
<cfset qSliders = application.fapi.getContentObjects(typename="hsSlider",bShow_eq="1",lProperties="objectID,title1,title2,title3,linkURL,linkProduct,buttontext,imageSilder")/>

<cfoutput>

<section class="slider">
    <div class="tp-banner-container">
        <div class="tp-banner" >
            <ul>
            	<cfloop query="qSliders">
            		<cfset sLink = qSliders.linkURL/>
            		<cfif isValid("uuid",linkProduct) >
            			<cfset sLink = application.fapi.getLink(typename="hsProduct",objectid="#qSliders.linkProduct#")/>
            		</cfif>
	                <!-- SLIDE  -->
	                <li data-transition="fade" data-slotamount="7" data-masterspeed="1500" >
	                    <!-- MAIN IMAGE -->
	                    <skin:view typename="hsProductImage" webskin="displayImageSlider" objectid="#qSliders.imageSilder#"/>
	                    <!-- LAYERS -->
	                    <div class="tp-caption skewfromrightshort fadeout"
	                        data-x="40"
	                        data-y="60"
	                        data-speed="500"
	                        data-start="1200"
	                        data-easing="Power4.easeOut"><h2><strong>#qSliders.title1#</strong></h2>
	                    </div>
	                    <div class="tp-caption skewfromrightshort fadeout"
	                        data-x="40"
	                        data-y="140"
	                        data-speed="500"
	                        data-start="1200"
	                        data-easing="Power4.easeOut"><h3>#qSliders.title2#</h3>
	                    </div>
	                    <div class="tp-caption skewfromrightshort fadeout"
	                        data-x="40"
	                        data-y="250"
	                        data-speed="500"
	                        data-start="1200"
	                        data-easing="Power4.easeOut"><span>#qSliders.title3# <span class="price">$960.00</span></span>
	                    </div>
	                    <div class="tp-caption skewfromrightshort fadeout"
	                        data-x="40"
	                        data-y="300"
	                        data-speed="500"
	                        data-start="1200"
	                        data-easing="Power4.easeOut"><a class="button big red" href="#sLink#" <cfif len(qSliders.linkURL)>target="_blank"</cfif>>#qSliders.buttontext#</a>
	                    </div>
	                </li>
                </cfloop>
            </ul>
        </div>
    </div>
</section>
</cfoutput>
<cfsetting enablecfoutputonly="false">