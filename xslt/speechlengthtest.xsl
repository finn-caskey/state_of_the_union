<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:variable name = "interval" select = "125"/>
    
    <xsl:template match = "/">
        <html>
            
            <head>
                <title>United States Presidents' State of the Union Addresses</title>
                <link rel="stylesheet" href="/SOTU_Addresses/html-css/index.css"/>
            </head>
            
            
            <body>
                <h1>State of the Union Addresses</h1>
                <div id="navbar">
                    <div class="navbar">
                        <a href="/SOTU_Addresses/index.xhtml">Home</a>
                        <div class="dropdown">
                            <button class="dropbtn">About</button>
                            <div class="dropdown-content">
                                <a href="/SOTU_Addresses/html-css/team.html">Team</a>
                                <a href="/SOTU_Addresses/html-css/purpose.html">Purpose</a>
                                <a href="/SOTU_Addresses/html-css/method.html">Methodology</a>
                            </div>
                        </div>           
                        <a href="/SOTU_Addresses/html-css/page.html">Text</a>
                        <div class="dropdown">
                            <button class="dropbtn">Analysis</button>
                            
                        </div>                
                    </div>
                </div>
                <h1>United States Presidents' State of the Union Addresses</h1>
                <h2>Speech Length</h2>
                
                
                <table>
                    <tr>
                        <th>
                            President
                        </th>
                        <th>
                            Speech Count
                        </th>
                        <th>
                            Average Length
                        </th>
                    </tr>
                    <xsl:for-each-group select = "//address" group-by = "president">
                        <tr>                       
                            <td><xsl:apply-templates select = "president"/></td>
                            <td><xsl:value-of select = "count(current-group())"/></td>
                            <td><xsl:value-of select = "round(string-length(string-join(current-group())) div count(current-group()))"/></td>
                        </tr>
                    </xsl:for-each-group>
                </table>
                <svg width="150%" height="850%">
                    <g transform="translate(250, 50)">
                        <!-- y-axis -->
                        <line x1="20" x2="20" y1="0" y2="{(59 * $interval) + 100}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (bottom) -->
                        <line x1="20" x2="1400" y1="{(59 * $interval) + 100}" y2="{(59 * $interval) +100}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (top)-->
                        <line x1="20" x2="1400" y1="0" y2="0" stroke="black" stroke-width="1"/>
                        
                        <!-- labels the x-axis (bottom) -->
                        <text x="20" y="{(59 * $interval) + 120}" text-anchor="middle">0 (Words Per Speech)</text>
                        <text x="150" y="{(59 * $interval) + 120}" text-anchor="middle">1000</text>
                        <text x="280" y="{(59 * $interval) + 120}" text-anchor="middle">2000</text>
                        <text x="410" y="{(59 * $interval) + 120}" text-anchor="middle">3000</text>
                        <text x="540" y="{(59 * $interval) + 120}" text-anchor="middle">4000</text>
                        <text x="670" y="{(59 * $interval) + 120}" text-anchor="middle">5000</text>
                        <text x="800" y="{(59 * $interval) + 120}" text-anchor="middle">6000</text>
                        <text x="930" y="{(59 * $interval) + 120}" text-anchor="middle">7000</text>
                        <text x="1060" y="{(59 * $interval) + 120}" text-anchor="middle">8000</text>
                        <text x="1190" y="{(59 * $interval) + 120}" text-anchor="middle">9000</text>
                        <text x="1320" y="{(59 * $interval) + 120}" text-anchor="middle">10000</text>
                        
                        <!-- labels the x-axis (top) -->
                        <text x="20" y="-10" text-anchor="middle">0 (Words Per Speech)</text>
                        <text x="150" y="-10" text-anchor="middle">1000</text>
                        <text x="280" y="-10" text-anchor="middle">2000</text>
                        <text x="410" y="-10" text-anchor="middle">3000</text>
                        <text x="540" y="-10" text-anchor="middle">4000</text>
                        <text x="670" y="-10" text-anchor="middle">5000</text>
                        <text x="800" y="-10" text-anchor="middle">6000</text>
                        <text x="930" y="-10" text-anchor="middle">7000</text>
                        <text x="1060" y="-10" text-anchor="middle">8000</text>
                        <text x="1190" y="-10" text-anchor="middle">9000</text>
                        <text x="1320" y="-10" text-anchor="middle">10000</text>
                        
                        <xsl:for-each-group select = "//address" group-by = "president">
                                                   
                                <xsl:apply-templates select = "president"/>
                                <xsl:value-of select = "count(current-group())"/>
                                <xsl:value-of select = "round(string-length(string-join(current-group())) div count(current-group()))"/>
                        </xsl:for-each-group>
                            
                            <!--bars (war, social, economy, diplomacy, religion-->
                            <line x1="20" x2="{$xposW}" y1="{$ypos}" y2="{$ypos}" stroke="red" stroke-width="15"/>
                            <line x1="20" x2="{$xposI}" y1="{$ypos+15}" y2="{$ypos+15}" stroke="blue" stroke-width="15"/>
                            <line x1="20" x2="{$xposD}" y1="{$ypos+30}" y2="{$ypos+30}" stroke="green" stroke-width="15"/>
                            <line x1="20" x2="{$xposE}" y1="{$ypos+45}" y2="{$ypos+45}" stroke="orange" stroke-width="15"/>
                            <line x1="20" x2="{$xposC}" y1="{$ypos+60}" y2="{$ypos+60}" stroke="magenta" stroke-width="15"/>
                            <line x1="20" x2="{$xposP}" y1="{$ypos+75}" y2="{$ypos+75}" stroke="black" stroke-width="15"/>
                            
<xsl:for-each-group select = "//address" group-by = "president">
                                                       
                                    <xsl:apply-templates select = "president"/>
                                    <xsl:value-of select = "count(current-group())"/>
                                    <xsl:value-of select = "round(string-length(string-join(current-group())) div count(current-group()))"/>
                            </xsl:for-each-group>
                            <!-- labels each bar with its count -->
                            <text x="{$xposW + 10}" y="{$ypos+5}">
                                War: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'war'])))"/>
                            </text>
                            
                           
                            
                            <!--y-axis label -->
                            <text x="-100" y="{$ypos+30}" text-anchor="middle"><xsl:apply-templates select="president"/>-<xsl:apply-templates select = "date"/></text>
                            
                      
                    </g>
                </svg>
                
            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>