<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:variable name = "interval" select = "65"/>
    
    <xsl:template match = "/">
  
            <html>
                
                <head>
                    <title>United States Presidents' State of the Union Addresses</title>
                    <link type="text/css" rel="stylesheet" href="index.css"/>
                </head>
                
                
                <body>
                    <h1>State of the Union Addresses</h1>
                    <!--navbar-->
                    <div id="navbar">
                        <div class="navbar">
                            <a href="/state_of_the_union/index.html">Home</a>
                            <div class="dropdown">
                                <button class="dropbtn">About</button>
                                <div class="dropdown-content">
                                    <a href="/state_of_the_union/html/about.html">About the Project</a>
                                    <a href="/state_of_the_union/html/team.html">Team</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Original Texts</button>
                                <div class="dropdown-content">
                                    <a href="/state_of_the_union/html/scope_toc.html">Project Scope (John F. Kennedy to George W. Bush)</a>
                                    <a href="/state_of_the_union/html/non_scope_toc.html">All Addresses (George Washington to George W. Bush</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn">Analysis</button>
                                <div class="dropdown-content">
                                    <a href="/state_of_the_union/html/graphs.html">Topic Reference Graphs By Mention</a>
                                    <a href="/state_of_the_union/html/percentgraphs.html">Topic Reference Graphs By Percentage</a>
                                    <a href="/state_of_the_union/html/speechlengthgraph.html">Average Address Length By President</a>
                                    <a href="/state_of_the_union/html/discussion.html">Discussion</a>                       
                                </div>
                            </div>                
                        </div>
                    </div>  
                    <h1>United States Presidents' State of the Union Addresses</h1>
                    <h2>Average Speech Length for Each President</h2>
                    <!--generates table w same data as graph-->
                   <!-- 
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
                    -->
                    
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2000 2800">
                        <g transform="translate(250, 50)">
                            
                           
                            <!-- y-axis -->
                            <line x1="20" x2="20" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1"/>
                            <!-- x-axis (bottom) -->
                            <line x1="20" x2="1650" y1="{(59 * $interval) -1160}" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1"/>
                            <!-- x-axis (top)-->
                            <line x1="20" x2="1650" y1="0" y2="0" stroke="black" stroke-width="1"/>
                            
                            <!-- labels the x-axis (bottom) -->
                            <text x="20" y="{(59 * $interval) - 1140}" text-anchor="middle">0</text>
                            <text x="150" y="{(59 * $interval) - 1140}" text-anchor="middle">1000</text>
                            <text x="280" y="{(59 * $interval) - 1140}" text-anchor="middle">2000</text>
                            <text x="410" y="{(59 * $interval) - 1140}" text-anchor="middle">3000</text>
                            <text x="540" y="{(59 * $interval) - 1140}" text-anchor="middle">4000</text>
                            <text x="670" y="{(59 * $interval) - 1140}" text-anchor="middle">5000</text>
                            <text x="800" y="{(59 * $interval) - 1140}" text-anchor="middle">6000</text>
                            <text x="930" y="{(59 * $interval) - 1140}" text-anchor="middle">7000</text>
                            <text x="1060" y="{(59 * $interval) - 1140}" text-anchor="middle">8000</text>
                            <text x="1190" y="{(59 * $interval) - 1140}" text-anchor="middle">9000</text>
                            <text x="1320" y="{(59 * $interval) - 1140}" text-anchor="middle">10000</text>
                            <text x="1450" y="{(59 * $interval) - 1140}" text-anchor="middle">11000</text>
                            <text x="1580" y="{(59 * $interval) - 1140}" text-anchor="middle">12000</text>
                            
                            <!-- labels the x-axis (top) -->
                            <text x="20" y="-10" text-anchor="middle">0</text>
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
                            <text x="1450" y="-10" text-anchor="middle">11000</text>
                            <text x="1580" y="-10" text-anchor="middle">12000</text>
                            
                            
                            <!-- the line going through the bars  -->
                            <line x1="150" x2="150" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="280" x2="280" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="410" x2="410" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="540" x2="540" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="670" x2="670" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="800" x2="800" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="930" x2="930" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="1060" x2="1060" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="1190" x2="1190" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="1320" x2="1320" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="1450" x2="1450" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            <line x1="1580" x2="1580" y1="0" y2="{(59 * $interval) -1160}" stroke="black" stroke-width="1" stroke-dasharray="8"/>
                            
                            <xsl:for-each-group select = "//address" group-by = "president">
                                
                                                               
                                <xsl:variable name="ypos" select="position() * $interval"/>
                                <xsl:variable name="xpos" select="(count(current-group())*20 )+20"/>
                                
                                <xsl:variable name="xposP" select="string-length(string-join(current-group())) div count(current-group())*.0125+20"/>
                                 
                                <line x1="20" x2="{$xposP}" y1="{$ypos}" y2="{$ypos}" stroke="#8B0000" stroke-width="15"/>
                                
                                <text x="{$xposP + 10}" y="{$ypos+5}">
                                     <xsl:value-of select="round(string-length(string-join(current-group())) div count(current-group()))"/>
                                </text>
                                
                                <!--y-axis label -->
                                <text x="-100" y="{$ypos+3}" text-anchor="middle"><xsl:apply-templates select="president"/>-<xsl:value-of select = "count(current-group())"/><xsl:text> Speeches</xsl:text> </text>
                                
                            </xsl:for-each-group>
                        </g>
                    </svg>
                    <footer>
                        <br/>
                        <p><a href="https://creativecommons.org/licenses/by-sa/4.0/"><img src="/state_of_the_union/pics/propercclicense.png" alt="state_of_the_union/pics/cclicense.png"></img></a></p>
                            <p><a href="https://github.com/finn-caskey/state_of_the_union">SOTU Team Github Here</a></p>
                            <br/>
                                <br/>
                    </footer>
                </body>
                
            </html>
        </xsl:template>
</xsl:stylesheet>