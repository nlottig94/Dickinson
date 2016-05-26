<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="witness"
        select="//front/descendant::witness/@xml:id"/>
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
                <script type="text/javascript" src="../scripts/dickinson.js"/>
                <title>Emily Dickinson: Fascicle 6 | <xsl:value-of select="//idno"/></title>
            </head>
            <body>
                <div class="main">
                    <div class="header">
                        <h1 class="title">
                            <a class="noShowLink" href="../index.html">
                                <span class="nameTitle">Emily Dickinson</span>
                            </a>
                            <a class="noShowLink" href="6home.html">
                                <span class="siteTitle">: Fascicle 6</span>
                            </a>
                        </h1>
                        <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
                            <img class="cclic" alt="Creative Commons License" style="border-width:0"
                                src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"/>
                        </a>
                    </div>
                    <div class="mwrapper">
                        <div class="menu">
                            <ul class="cfix">
                                <li>
                                    <a href="../index.html">Home</a>
                                </li>
                                <li>
                                    <a href="../about.html">About <span class="arrow">▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="../members.html">Our Members</a>
                                        </li>
                                        <li>
                                            <a href="../methodology.html">Methodology</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="poems.html">Poems <span class="arrow">▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="601.html">601</a>
                                        </li>
                                        <li>
                                            <a href="602.html">602</a>
                                        </li>
                                        <li>
                                            <a href="603.html">603</a>
                                        </li>
                                        <li>
                                            <a href="604.html">604</a>
                                        </li>
                                        <li>
                                            <a href="605.html">605</a>
                                        </li>
                                        <li>
                                            <a href="606.html">606</a>
                                        </li>
                                        <li>
                                            <a href="607.html">607</a>
                                        </li>
                                        <li>
                                            <a href="608.html">608</a>
                                        </li>
                                        <li>
                                            <a href="609.html">609</a>
                                        </li>
                                        <li>
                                            <a href="610.html">610</a>
                                        </li>
                                        <li>
                                            <a href="611.html">611</a>
                                        </li>
                                        <li>
                                            <a href="612.html">612</a>
                                        </li>
                                        <li>
                                            <a href="613.html">613</a>
                                        </li>
                                        <li>
                                            <a href="614.html">614</a>
                                        </li>
                                        <li>
                                            <a href="615.html">615</a>
                                        </li>
                                        <li>
                                            <a href="616.html">616</a>
                                        </li>
                                        <li>
                                            <a href="617.html">617</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="../analysis.html">Analysis <span class="arrow"
                                        >▼</span></a>
                                    <ul class="sub">
                                        <li>
                                            <a href="dash.html">Dash Usage Comparison</a>
                                        </li>
                                        <li>
                                            <a href="conclusion.html">Conclusion</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="../contact.html">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="content">
                        <div class="side-nav">
                            <!-- Tests for existance of variants in the listWit element of each poem's XML-->
                            <button class="df6Key" id="df6Button">Fascicle 6</button>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems1')]">
                                <button class="poems1Key" id="poems1Button">1890 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems2')]">
                                <button class="poems2Key" id="poems2Button">1891 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'poems3')]">
                                <button class="poems3Key" id="poems3Button">1896 Poems</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'ce')]">
                                <button class="ceKey" id="ceButton">Centenary Edition</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'fh')]">
                                <button class="fhKey" id="fhButton">Final Harvest</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'bm')]">
                                <button class="bmKey" id="bmButton">Bolts of Melody</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'lSD')]">
                                <button class="lSDKey" id="lSDButton">Letter to Susan
                                    Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'LETTER')]">
                                <button class="LETTERKey" id="LETTERButton">Letter from Emily
                                    Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'D')]">
                                <button class="DKey" id="DButton">Dickinson</button>
                            </xsl:if>
                            <xsl:if test="//front//witness[@xml:id/contains(., 'CP')]">
                                <button class="CPKey" id="CPButton">Complete Poems</button>
                            </xsl:if>
                            <a class="origXML" id="origXML"
                                href="{//listRef/ptr/@target[contains(., 'xml')]}">View Original
                                XML</a>
                            <button class="origImg" id="origImg">View Original Variant
                                Images</button>
                            <p class="instruct"><strong>Instructions:</strong> You can turn the
                                variations of the poem on and off at the same time. The button will
                                show as depressed, and the poems will load side by side. The images
                                for the corresponding poem will stack on top of each other if
                                multiple variants are turned on at once.</p>

                        </div>
                        <div class="poem">
                            <xsl:apply-templates select="//body"/>
                        </div>
                        <div class="poemImg"> </div>
                    </div>
                    <div class="footer"> </div>
                    <div id="imgModal" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="close">×</span>
                                <h2>Variant Poem Images</h2>
                            </div>
                            <div class="modal-body">
                                <xsl:for-each
                                    select="//listRef/ptr/@target[contains(., '.jpg') and not(contains(., 'Map'))]">
                                    <div class="modalImgCont">
                                        <a target="_blank" href="{.}">
                                            <img src="{.}" alt="Poem {//idno} Variant Image"/>
                                        </a>
                                        <!-- Tests for existance of variant image files in the listRef element of each poem's XML-->
                                        <xsl:choose>
                                            <xsl:when
                                                test=".[contains(., 'fs') and not(contains(., 'a.') or contains(., 'b.') or contains(., 'c.'))]">
                                                <div class="modalDesc">Fascicle 6</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'a.')]">
                                                <div class="modalDesc">Fascicle 6 'A'</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'b.')]">
                                                <div class="modalDesc">Fascicle 6 'B'</div>
                                            </xsl:when>
                                            <xsl:when
                                                test=".[contains(., 'fs') and contains(., 'c.')]">
                                                <div class="modalDesc">Fascicle 6 'C'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems1.')]">
                                                <div class="modalDesc">1890 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems2.')]">
                                                <div class="modalDesc">1891 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'poems3.')]">
                                                <div class="modalDesc">1896 Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'ce.')]">
                                                <div class="modalDesc">Centenary Edition</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'cea.')]">
                                                <div class="modalDesc">Centenary Edition 'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'ceb.')]">
                                                <div class="modalDesc">Centenary Edition 'B'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fh.')]">
                                                <div class="modalDesc">Final Harvest</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fha.')]">
                                                <div class="modalDesc">Final Harvest 'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'fhb.')]">
                                                <div class="modalDesc">Final Harvest 'B'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'bm.')]">
                                                <div class="modalDesc">Bolts of Melody</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'lSD.')]">
                                                <div class="modalDesc">Susan Dickinson Letter</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'lSDa.')]">
                                                <div class="modalDesc">Susan Dickinson Letter
                                                  'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'lSDb.')]">
                                                <div class="modalDesc">Susan Dickinson Letter
                                                  'B'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'LETTER.')]">
                                                <div class="modalDesc">Letter from Emily
                                                  Dickinson</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'D.')]">
                                                <div class="modalDesc">Dickinson</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'CP.')]">
                                                <div class="modalDesc">Complete Poems</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'CPa.')]">
                                                <div class="modalDesc">Complete Poems 'A'</div>
                                            </xsl:when>
                                            <xsl:when test=".[contains(., 'CPb.')]">
                                                <div class="modalDesc">Complete Poems 'B'</div>
                                            </xsl:when>
                                        </xsl:choose>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="q[@rend]">
        <xsl:choose>
            <xsl:when test="@rend = 'single'">
                <q class="single">
                    <xsl:apply-templates/>
                </q>
            </xsl:when>
            <xsl:otherwise>
                <q class="double">
                    <xsl:apply-templates/>
                </q>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <xsl:template match="head">
        <h2>
            <span id="poem{//idno}">
                <xsl:apply-templates select="title"/>
            </span>
        </h2>
    </xsl:template>

    <xsl:template match="lg">
        <div class="para">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="l">
        <div class="line">
            <span class="lineNum"><xsl:value-of select="count(preceding::l) + 1"/><xsl:text>: </xsl:text></span>
            <div class="lineContent">
        <xsl:variable name="current" select="current()"/>
                <!--<xsl:sequence select="current()"/>
        </xsl:variable> -->
       <!--2016-04-20 ebb: It doesn't seem to be necessary to declare this variable a sequence because of course current() is going to be a new
           value each time the template match on `<l>` fires.-->
         
                <xsl:for-each select="$witness"><table border="1">
                    <!-- ebb: removed @class="current()" from table element to output variants only inside cells.-->
            <tr>
                   <!--<xsl:value-of select="current()"/>-->                 
                    <xsl:apply-templates select="$current" mode="row">
                        <xsl:with-param name="wit" select="current()" as="xs:string" tunnel="yes"/>
                    </xsl:apply-templates>
                </tr></table>
            </xsl:for-each>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="l" mode="row">
        <xsl:param name="wit" tunnel="yes"/>
        
        <xsl:for-each select="node()">
                        <xsl:choose>
                            <xsl:when test="current()/rdg[contains(@wit, $wit)]">
                <td class="{$wit}"><xsl:apply-templates select="."/>
                </td></xsl:when>
            
            <xsl:otherwise>
                
                    <xsl:apply-templates select="."/>
                
                
            </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="app">
        <xsl:param name="wit" tunnel="yes"/>
        <xsl:apply-templates select="rdg[contains(@wit, $wit)]"/>
    </xsl:template>
</xsl:stylesheet>
