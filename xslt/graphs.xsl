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
                <link type="text/css" rel="stylesheet" href="index.css"/>
            </head>
            
            <body>
                <h1>State Of The Union</h1>
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
                <h1>Length of References per Speech (War, Infrastructure, Diplomacy, Economics, Civil Rights, Poverty)</h1>
                <svg width="100%" height="850%" viewBox="0 0 2000 10000">
                    <g transform="translate(250, 50)">
                            
                        <!-- to do == flip names so they come from top, add numbers on top axis, fit all names on the graph-->
                        <!-- y-axis -->
                        <line x1="20" x2="20" y1="0" y2="{(59 * $interval) - 1620}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (bottom) -->
                        <line x1="20" x2="1400" y1="{(59 * $interval) - 1620}" y2="{(59 * $interval) - 1620}" stroke="black" stroke-width="1"/>
                        <!-- x-axis (top)-->
                        <line x1="20" x2="1400" y1="0" y2="0" stroke="black" stroke-width="1"/>
                        
                        <!-- labels the x-axis (bottom) -->
                        <text x="20" y="{(59 * $interval) - 1600}" text-anchor="middle">0</text>
                        <text x="70" y="{(59 * $interval) - 1600}" text-anchor="middle">1000</text>
                        <text x="140" y="{(59 * $interval) - 1600}" text-anchor="middle">2000</text>
                        <text x="210" y="{(59 * $interval) - 1600}" text-anchor="middle">3000</text>
                        <text x="280" y="{(59 * $interval) - 1600}" text-anchor="middle">4000</text>
                        <text x="350" y="{(59 * $interval) - 1600}" text-anchor="middle">5000</text>
                        <text x="420" y="{(59 * $interval) - 1600}" text-anchor="middle">6000</text>
                        <text x="490" y="{(59 * $interval) - 1600}" text-anchor="middle">7000</text>
                        <text x="560" y="{(59 * $interval) - 1600}" text-anchor="middle">8000</text>
                        <text x="630" y="{(59 * $interval) - 1600}" text-anchor="middle">9000</text>
                        <text x="700" y="{(59 * $interval) - 1600}" text-anchor="middle">10000</text>
                        <text x="770" y="{(59 * $interval) - 1600}" text-anchor="middle">11000</text>
                        <text x="840" y="{(59 * $interval) - 1600}" text-anchor="middle">12000</text>
                        <text x="910" y="{(59 * $interval) - 1600}" text-anchor="middle">13000</text>
                        <text x="980" y="{(59 * $interval) - 1600}" text-anchor="middle">14000</text>
                        <text x="1050" y="{(59 * $interval) - 1600}" text-anchor="middle">15000</text>
                        <text x="1120" y="{(59 * $interval) - 1600}" text-anchor="middle">16000</text>
                        <text x="1190" y="{(59 * $interval) - 1600}" text-anchor="middle">17000</text>
                        <text x="1260" y="{(59 * $interval) - 1600}" text-anchor="middle">18000</text>
                        <text x="1330" y="{(59 * $interval) - 1600}" text-anchor="middle">19000</text>
                        <text x="1400" y="{(59 * $interval) - 1600}" text-anchor="middle">20000</text>
                        
                        <!-- labels the x-axis (top) -->
                        <text x="20" y="-10" text-anchor="middle">0</text>
                        <text x="70" y="-10" text-anchor="middle">1000</text>
                        <text x="140" y="-10" text-anchor="middle">2000</text>
                        <text x="210" y="-10" text-anchor="middle">3000</text>
                        <text x="280" y="-10" text-anchor="middle">4000</text>
                        <text x="350" y="-10" text-anchor="middle">5000</text>
                        <text x="420" y="-10" text-anchor="middle">6000</text>
                        <text x="490" y="-10" text-anchor="middle">7000</text>
                        <text x="560" y="-10" text-anchor="middle">8000</text>
                        <text x="630" y="-10" text-anchor="middle">9000</text>
                        <text x="700" y="-10" text-anchor="middle">10000</text>
                        <text x="770" y="-10" text-anchor="middle">11000</text>
                        <text x="840" y="-10" text-anchor="middle">12000</text>
                        <text x="910" y="-10" text-anchor="middle">13000</text>
                        <text x="980" y="-10" text-anchor="middle">14000</text>
                        <text x="1050" y="-10" text-anchor="middle">15000</text>
                        <text x="1120" y="-10" text-anchor="middle">16000</text>
                        <text x="1190" y="-10" text-anchor="middle">17000</text>
                        <text x="1260" y="-10" text-anchor="middle">18000</text>
                        <text x="1330" y="-10" text-anchor="middle">19000</text>
                        <text x="1400" y="-10" text-anchor="middle">20000</text>
                        
                        
                        
                        
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
                            
                            
                            <!-- the line going through the bars  -->
                            <line x1="70" x2="70" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="140" x2="140" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="210" x2="210" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="280" x2="280" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="350" x2="350" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="420" x2="420" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="490" x2="490" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="560" x2="560" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="630" x2="630" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="700" x2="700" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="770" x2="770" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="840" x2="840" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="910" x2="910" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="980" x2="980" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1050" x2="1050" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1120" x2="1120" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1190" x2="1190" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1260" x2="1260" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1330" x2="1330" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            <line x1="1400" x2="1400" y1="0" y2="{(59 * $interval) -1620}" stroke="black" stroke-width=".25" stroke-dasharray="8"/>
                            
                            
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
                            <text x="15" y="{$ypos+35}" text-anchor="end"><xsl:apply-templates select="president"/>-<xsl:apply-templates select = "date"/></text>
                            
                        </xsl:for-each>
                    </g>
                </svg>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>