<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head><title>State of the Union</title></head>
            <body>
                
                <h1>State of the Union</h1>
                <h2>Table of Contents</h2>
                <ol><xsl:apply-templates select="//address" mode="toc"/></ol>
                <hr/> 
                    <xsl:apply-templates select="//address"/>
                    </body>
                    </html>
    </xsl:template>
    
    <xsl:template match="address" mode="toc">
        <li><strong><xsl:apply-templates select="descendant::president"/></strong></li>
            </xsl:template>
    
    <xsl:template match="body">
        <h2><xsl:apply-templates select="descendant::title"/>
        </h2>
        <!--ebb: This rule outputs the titles once again, this time in another section of the document where you are reproducing the full text of each poem. 
            NOTE: You may have observed in your output that some of our titles are inconsistently formatted! Some poem numbers have a period after them, and some only white space before the parenthetical information that summarizes each poem's publication history. An Optional Challenge for the next assignment is to find a way to:
        a) output only the poem and its number in the part of the document where you reproduce the poems, and/or
        b) remove the rogue period from the output, using the replace() function.
       We'll show you how we did both of these things in our solution to XSLT Exercise 6.-->
        <xsl:apply-templates select="descendant::lg"/>
        
    </xsl:template>
    
    <xsl:template match="lg">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <!--ebb Notice that we need a template rule just for <lg> because there are multiple <lg> elements in each poem, and we wish to wrap an HTML <p> element around each one. Since the only child of lg is l, that is what will fire next.-->
    
    <xsl:template match="l">
        <xsl:value-of select="count(preceding::l) + 1"/><xsl:text>: </xsl:text><xsl:apply-templates/>
        <xsl:if test="following-sibling::l"><br/></xsl:if>
        <!--ebb: 
            1) Notice how we handled the numbering of lines, using the count() function and the preceding:: axis. 
            This works to read and count the preceding:: l inside each specific poem file in our collection. 
            2) For the xsl:if test, we actually wanted to deal with sibling elements, children of the same parent <lg>. 
            This is how we tested to see where to position a <br/> element, and prevent it from being output on the last line of a line-group. If there is a following-sibling <l>, then output a <br/>. When there is no following-sibling <l>, then, we will not output the unnecessary <br/> at the end of a <p>.-->
    </xsl:template>
    
    <xsl:template match="rdg">
        <span class="{@wit}"><xsl:apply-templates/></span>
    </xsl:template>
    <!--ebb: This last template rule matches our <rdg> elements in order to wrap an HTML <span> around each one and give it a distinct @class attribute. This will help us to style variants using CSS or manipulate them with JavaScript later, but for now, it ensures that the HTML retains the information on Dickinson's variants that we have coded in our XML.-->
    
</xsl:stylesheet>  
