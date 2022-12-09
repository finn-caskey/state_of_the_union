<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name = "interval" select = "125"/>
    
    <xsl:template match = "/">
        <html>
            <head>
                <title>Length of References per Speech</title>
                <link rel="stylesheet" href="/InaugAddresses/html-css/index.css"/>
            </head>
            
            <body>
                <h1>State Of The Union</h1>
                <!--navbar-->
                <div id="navbar">
                    <div class="navbar">
                        <ul>
                            <li><a href="/state_of_the_union/index.html">Home</a></li>
                            <li><a href="/state_of_the_union/html/about.html">About</a></li>
                            <li><a href="/state_of_the_union/html/scope_toc.html">Addresses from John F. Kennedy to George W. Bush</a></li>
                            <li><a href="/state_of_the_union/html/non_scope_toc.html">All Addresses</a></li>
                            <li><a href="/state_of_the_union/html/graphs.html">Topic Reference Graphs By Mention</a></li>
                            <li><a href="/state_of_the_union/html/percentgraphs.html">Topic Reference Graphs By Percentage</a></li>
                            <li><a href="/state_of_the_union/html/speechlengthgraph.html">Average Address Length By President</a></li>
                        </ul>
                    </div>
                </div>
                <h1>Length of References per Speech (War, Infrastructure, Diplomacy, Economics, Civil Rights, Poverty)</h1>
                <svg width="150%" height="850%">
                    <g transform="translate(250, 50)">
                            
                        <!-- to do == flip names so they come from top, add numbers on top axis, fit all names on the graph-->
                        <!-- y-axis -->
                        <line x1="20" x2="20" y1="0" y2="{(59 * $interval) + 100}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (bottom) -->
                        <line x1="20" x2="1400" y1="{(59 * $interval) + 100}" y2="{(59 * $interval) +100}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (top)-->
                        <line x1="20" x2="1400" y1="0" y2="0" stroke="black" stroke-width="1"/>
                        
                        <!-- labels the x-axis (bottom) -->
                        <text x="20" y="{(59 * $interval) + 120}" text-anchor="middle">0</text>
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
                        
                        <!-- Instead stead of using xsl:apply-templates and creating another xsl:template match, we use xsl:for-each -->
                        <xsl:for-each select="//scope//address">
                            <!-- Local variables -->
                            <xsl:variable name="ypos" select="position() * $interval"/>
                            <xsl:variable name="xpos" select="(count(descendant::topic[@type]) *20 )+20"/>
                            
                            <xsl:variable name="xposW" select="string-length(normalize-space(string-join(descendant::topic[@type = 'war'])))*.05+20"/>
                            <xsl:variable name="xposI" select="string-length(normalize-space(string-join(descendant::topic[@type = 'infra'])))*.05+20"/>
                            <xsl:variable name="xposD" select="string-length(normalize-space(string-join(descendant::topic[@type = 'dipl'])))*.05+20"/>
                            <xsl:variable name="xposE" select="string-length(normalize-space(string-join(descendant::topic[@type = 'econ'])))*.05+20"/>
                            <xsl:variable name="xposC" select="string-length(normalize-space(string-join(descendant::topic[@type = 'civ'])))*.05+20"/>
                            <xsl:variable name="xposP" select="string-length(normalize-space(string-join(descendant::topic[@type = 'pov'])))*.05+20"/>
                            
                            <!--bars-->
                            <line x1="20" x2="{$xposW}" y1="{$ypos}" y2="{$ypos}" stroke="red" stroke-width="15"/>
                            <line x1="20" x2="{$xposI}" y1="{$ypos+15}" y2="{$ypos+15}" stroke="blue" stroke-width="15"/>
                            <line x1="20" x2="{$xposD}" y1="{$ypos+30}" y2="{$ypos+30}" stroke="green" stroke-width="15"/>
                            <line x1="20" x2="{$xposE}" y1="{$ypos+45}" y2="{$ypos+45}" stroke="orange" stroke-width="15"/>
                            <line x1="20" x2="{$xposC}" y1="{$ypos+60}" y2="{$ypos+60}" stroke="magenta" stroke-width="15"/>
                            <line x1="20" x2="{$xposP}" y1="{$ypos+75}" y2="{$ypos+75}" stroke="black" stroke-width="15"/>
                            
                            <!-- labels each bar with its count -->
                            <text x="{$xposW + 10}" y="{$ypos+5}">
                                 War: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'war'])))"/>
                            </text>
                            
                            <text x="{$xposI + 10}" y="{$ypos + 20}">
                                Infrastructure: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'infra'])))"/>
                            </text>
                            
                            <text x="{$xposD + 10}" y="{$ypos+ 35}">
                                Diplomacy: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'dipl'])))"/>
                            </text>
                            
                            <text x="{$xposE + 10}" y="{$ypos + 50}">
                                Economy: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'econ'])))"/>
                            </text>
                            
                            <text x="{$xposC + 10}" y="{$ypos + 65}">
                                Civil-Rights: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'civ'])))"/>
                            </text>
                            
                            <text x="{$xposP + 10}" y="{$ypos + 80}">
                                Poverty: <xsl:value-of select="string-length(normalize-space(string-join(descendant::topic[@type = 'pov'])))"/>
                            </text>
                            
                            <!--y-axis label -->
                            <text x="-100" y="{$ypos+30}" text-anchor="middle"><xsl:apply-templates select="president"/>-<xsl:apply-templates select = "date"/></text>
                            
                        </xsl:for-each>
                    </g>
                </svg>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>