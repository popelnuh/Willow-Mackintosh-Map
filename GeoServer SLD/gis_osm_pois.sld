<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xmlns:se="http://www.opengis.net/se" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink">
  <NamedLayer>
    <se:Name>gis_osm_pois</se:Name>
    <UserStyle>
      <se:Name>gis_osm_pois</se:Name>
      <se:FeatureTypeStyle>

        <se:Rule>
          <se:Name>Rose Symbol</se:Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                    <ogc:PropertyName>name</ogc:PropertyName>
                    <ogc:Literal>%Willow%</ogc:Literal>
                  </ogc:PropertyIsLike>
                  <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                    <ogc:PropertyName>name</ogc:PropertyName>
                    <ogc:Literal>%MacIntosh%</ogc:Literal>
                  </ogc:PropertyIsLike>
                </ogc:Or>
                <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                  <ogc:PropertyName>name</ogc:PropertyName>
                  <ogc:Literal>%The Lighthouse%</ogc:Literal>
                </ogc:PropertyIsLike>
              </ogc:Or>
              <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                <ogc:PropertyName>name</ogc:PropertyName>
                <ogc:Literal>%House for an Art Lover%</ogc:Literal>
              </ogc:PropertyIsLike>
            </ogc:Or>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:ExternalGraphic>
                <se:OnlineResource xlink:href="rose3.png" xlink:type="simple"/>
                <se:Format>image/png</se:Format>
              </se:ExternalGraphic>
              <se:Size>40</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>

        <se:Rule>
          <se:Name>Monuments</se:Name>
          <se:Description>
            <se:Title>Monuments</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>fclass</ogc:PropertyName>
                <ogc:Literal>monument</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>fclass</ogc:PropertyName>
                <ogc:Literal>artwork</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>10000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>diamond</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ecd4b6</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#801119</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>18</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>diamond</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ecd4b6</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#801119</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">1</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>7</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>

        <se:Rule>
          <se:Name>Bars 1:10000 - 1:5000</se:Name>
          <se:Description>
            <se:Title>Bars 1:10000 - 1:5000</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>fclass</ogc:PropertyName>
              <ogc:Literal>bar</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>5000</se:MinScaleDenominator>
          <se:MaxScaleDenominator>10000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <!--Plain SVG fallback, no parameters-->
              <se:ExternalGraphic>
                <se:OnlineResource xlink:href="bar.png" xlink:type="simple"/>
                <se:Format>image/png</se:Format>
              </se:ExternalGraphic>             
              <se:Size>20</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        
        <se:Rule>
          <se:Name>Bars 1:5000 - 1:1</se:Name>
          <se:Description>
            <se:Title>Bars 1:5000 - 1:1</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>fclass</ogc:PropertyName>
              <ogc:Literal>bar</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>5000</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:ExternalGraphic>
                <se:OnlineResource xlink:href="bar.png" xlink:type="simple"/>
                <se:Format>image/png</se:Format>
              </se:ExternalGraphic>             
              <se:Size>30</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
            
          <se:TextSymbolizer>
            <se:Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Willow</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>1</se:AnchorPointX>
                  <se:AnchorPointY>0</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
                  <se:DisplacementX>36</se:DisplacementX>
                  <se:DisplacementY>36</se:DisplacementY>
                </se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#934772</se:SvgParameter>
            </se:Fill>
          </se:TextSymbolizer>
        </se:Rule>
        <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                  <ogc:Or>
                    <ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fclass</ogc:PropertyName>
                        <ogc:Literal>fountain</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fclass</ogc:PropertyName>
                        <ogc:Literal>lighthouse</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <!-- <ogc:PropertyIsEqualTo>
                      <ogc:PropertyName>fclass</ogc:PropertyName>
                      <ogc:Literal>museum</ogc:Literal>
                    </ogc:PropertyIsEqualTo>-->
                  </ogc:Or>
                  <ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>fclass</ogc:PropertyName>
                    <ogc:Literal>park</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
                </ogc:Or>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>fclass</ogc:PropertyName>
                  <ogc:Literal>university</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>fclass</ogc:PropertyName>
                <ogc:Literal>library</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>          
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>10000</se:MaxScaleDenominator>
          <se:TextSymbolizer>
            <se:Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Willow</se:SvgParameter>
              <se:SvgParameter name="font-size">15</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>0</se:AnchorPointX>
                  <se:AnchorPointY>0.5</se:AnchorPointY>
                </se:AnchorPoint>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
            </se:Fill>
            <se:Priority>1000</se:Priority>
            <se:VendorOption name="maxDisplacement">30</se:VendorOption>
            <se:VendorOption name="spaceAround">20</se:VendorOption>
          </se:TextSymbolizer>
        </se:Rule>
        
        <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:Or>
                   <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                    <ogc:PropertyName>name</ogc:PropertyName>
                    <ogc:Literal>%Willow%</ogc:Literal>
                  </ogc:PropertyIsLike>
                  <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                    <ogc:PropertyName>name</ogc:PropertyName>
                    <ogc:Literal>%MacIntosh%</ogc:Literal>
                  </ogc:PropertyIsLike>
                </ogc:Or>
                <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                  <ogc:PropertyName>name</ogc:PropertyName>
                  <ogc:Literal>%The Lighthouse%</ogc:Literal>
                </ogc:PropertyIsLike>
                              <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                <ogc:PropertyName>name</ogc:PropertyName>
                <ogc:Literal>%House for an Art Lover%</ogc:Literal>
              </ogc:PropertyIsLike>
              </ogc:Or>
            </ogc:Or>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>30000</se:MaxScaleDenominator>
          
          <se:TextSymbolizer>
            <se:Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Willow</se:SvgParameter>
              <se:SvgParameter name="font-size">10</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>1</se:AnchorPointX>
                  <se:AnchorPointY>0</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
                  <se:DisplacementX>36</se:DisplacementX>
                  <se:DisplacementY>36</se:DisplacementY>
                </se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#934772</se:SvgParameter>
            </se:Fill>
          </se:TextSymbolizer>
        </se:Rule>

        <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:Or>
              <ogc:Or>
                <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                  <ogc:PropertyName>name</ogc:PropertyName>
                  <ogc:Literal>%Willow%</ogc:Literal>
                </ogc:PropertyIsLike>
                <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                  <ogc:PropertyName>name</ogc:PropertyName>
                  <ogc:Literal>%MacIntosh%</ogc:Literal>
                </ogc:PropertyIsLike>
              </ogc:Or>
              <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                <ogc:PropertyName>name</ogc:PropertyName>
                <ogc:Literal>%The Lighthouse%</ogc:Literal>
              </ogc:PropertyIsLike>
              <ogc:PropertyIsLike escapeChar="\" wildCard="%" singleChar="_">
                <ogc:PropertyName>name</ogc:PropertyName>
                <ogc:Literal>%House for an Art Lover%</ogc:Literal>
              </ogc:PropertyIsLike>
            </ogc:Or>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>50000</se:MaxScaleDenominator>

          <se:TextSymbolizer>
            <se:Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Willow</se:SvgParameter>
              <se:SvgParameter name="font-size">25</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>0</se:AnchorPointX>
                  <se:AnchorPointY>0.5</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
                  <se:DisplacementX>10.61</se:DisplacementX>
                  <se:DisplacementY>10.61</se:DisplacementY>
                </se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#000000</se:SvgParameter>
            </se:Fill>
            <se:VendorOption name="maxDisplacement">30</se:VendorOption>
            <se:VendorOption name="spaceAround">10</se:VendorOption>
          </se:TextSymbolizer>
        </se:Rule>

        <se:Rule>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>fclass</ogc:PropertyName>
              <ogc:Literal>monument</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:MinScaleDenominator>1</se:MinScaleDenominator>
          <se:MaxScaleDenominator>10000</se:MaxScaleDenominator>
          <se:TextSymbolizer>
            <se:Label>
              <ogc:PropertyName>name</ogc:PropertyName>
            </se:Label>
            <se:Font>
              <se:SvgParameter name="font-family">Willow</se:SvgParameter>
              <se:SvgParameter name="font-size">13</se:SvgParameter>
            </se:Font>
            <se:LabelPlacement>
              <se:PointPlacement>
                <se:AnchorPoint>
                  <se:AnchorPointX>0.5</se:AnchorPointX>
                  <se:AnchorPointY>0</se:AnchorPointY>
                </se:AnchorPoint>
                <se:Displacement>
                  <se:DisplacementX>18</se:DisplacementX>
                  <se:DisplacementY>18</se:DisplacementY>
                </se:Displacement>
              </se:PointPlacement>
            </se:LabelPlacement>
            <se:Fill>
              <se:SvgParameter name="fill">#000000</se:SvgParameter>
            </se:Fill>
            <se:VendorOption name="maxDisplacement">20</se:VendorOption>
            <se:VendorOption name="spaceAround">30</se:VendorOption>                      
          </se:TextSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
