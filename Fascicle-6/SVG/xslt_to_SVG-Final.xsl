<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="DickinsonColl" select="collection('../Dickinson6_InitialXML')"/>
    <xsl:variable name="y-interval" select="4"/>
    <xsl:variable name="x-interval" select="30"/>
   
   
    <xsl:template match="/">
        <svg width="100%" height="125%">
            <g transform="translate(100, 550)">
                <g id="baseStuff">
                    <line x1="15" x2="15" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="75" x2="75" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="135" x2="135" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="195" x2="195" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="255" x2="255" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="315" x2="315" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="375" x2="375" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="435" x2="435" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <line x1="495" x2="495" y1="0" y2="-450" stroke="#EEEEEE" stroke-width="30"/>
                    <!-- title -->
                    <text x="255" y="-485" text-anchor="middle" font-size="25px" font-family="'Open Sans', sans-serif">Percentage of Dash Reduction</text>
                    <text x="255" y="-460" text-anchor="middle" font-size="25px" font-family="'Open Sans', sans-serif">in Published Versions Compared to Originals</text>
                    <!-- y-Axis -->
                    <!--<line x1="0" x2="0" y1="0" y2="-450" stroke="black" stroke-width="1"/>-->
                    <!-- x-Axis -->
                    <line x1="-1" x2="525" y1="0" y2="0" stroke="black" stroke-width="1"/>
                    <!-- y-axis marks -->
                    <text x="-25" y="-100" text-anchor="middle" font-family="'Open Sans', sans-serif">25%</text>
                    <line x1="-10" x2="525" y1="-100" y2="-100" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-200" text-anchor="middle" font-family="'Open Sans', sans-serif">50%</text>
                    <line x1="-10" x2="525" y1="-200" y2="-200" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-300" text-anchor="middle" font-family="'Open Sans', sans-serif">75%</text>
                    <line x1="-10" x2="525" y1="-300" y2="-300" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <text x="-25" y="-400" text-anchor="middle" font-family="'Open Sans', sans-serif">100%</text>
                    <line x1="-10" x2="525" y1="-400" y2="-400" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
                    <!-- y-axis label -->
                    <text x="210" y="-50" transform="rotate(-90)" text-anchor="middle" font-size="14px" font-family="'Open Sans', sans-serif">Percentage of Reduction</text>
                    <!-- x-axis marks -->
                    <line x1="0" x2="0" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="15" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 1</text>
                    <line x1="30" x2="30" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="45" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 2</text>
                    <line x1="60" x2="60" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="75" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 3</text>
                    <line x1="90" x2="90" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="105" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 4</text>
                    <line x1="120" x2="120" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="135" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 5</text>
                    <line x1="150" x2="150" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="165" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 6</text>
                    <line x1="180" x2="180" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="195" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 7</text>
                    <line x1="210" x2="210" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="225" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 8</text>
                    <line x1="240" x2="240" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="255" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 9</text>
                    <line x1="270" x2="270" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="285" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 10</text>
                    <line x1="300" x2="300" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="315" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 11</text>
                    <line x1="330" x2="330" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="345" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 12</text>
                    <line x1="360" x2="360" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="375" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 13</text>
                    <line x1="390" x2="390" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="405" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 14</text>
                    <line x1="420" x2="420" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="435" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 15</text>
                    <line x1="450" x2="450" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="465" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 16</text>
                    <line x1="480" x2="480" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                    <text x="495" y="25" text-anchor="middle" font-size="7px" font-family="'Open Sans', sans-serif">Poem 17</text>
                    <line x1="510" x2="510" y1="10" y2="-450" stroke="black" stroke-width="1"/>
                </g>
                <g id="legend">
                    <circle cx="0" cy="55" r="15" fill="#0099CC" />
                    <text x="15" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black">&#10137;</text>
                    <text x="27" y="47" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">The Poems of Emily</text>
                    <text x="50" y="59" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Dickinson,</text>
                    <text x="30" y="71" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Centenary Edition</text>
                    <circle cx="0" cy="115" r="15" fill="#ec008c" />
                    <text x="15" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black">&#10137;Letter to Susan Dickinson</text>
                    <circle cx="0" cy="175" r="15" fill="#008080" />
                    <text x="30" y="172" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Letter from Emily</text>
                    <text x="15" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;</text>
                    <text x="45" y="184" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">Dickinson</text>
                    <circle cx="185" cy="55" r="15" fill="#8800CC" />
                    <text x="200" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Bolts of Melody</text>
                    <circle cx="185" cy="115" r="15" fill="#2200CC" />
                    <text x="200" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10139;Final Harvest</text>
                    <circle cx="185" cy="175" r="15" fill="#006622" />
                    <text x="200" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Dickinson</text>
                    <circle cx="185" cy="235" r="15" fill="#e64d00" />
                    <text x="200" y="238" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Complete Poems</text>
                    <circle cx="375" cy="175" r="15" fill="#ACE500" />
                    <text x="390" y="178" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems, Third Series</text>
                    <circle cx="375" cy="115" r="15" fill="#FFFF00" />
                    <text x="390" y="118" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems, Second Series</text>
                    <circle cx="375" cy="55" r="15" fill="#FF9900" />
                    <text x="390" y="58" text-anchor="start" font-size="12px" font-family="'Open Sans', sans-serif" fill="black" font-style="italic">&#10137;Poems</text>
                    
                </g>
                <g id="dots">
        <!--ebb: This seems to be working now. Compare the output values with what you can see in the poems' XML to
        double check! NOTE TO TEAM: I've set circles on your graph, and they look pretty but they are meaningless in relation to your
        Y axis and the title of your graph! 
        My numbers and values for the Y position of each red circle are just based on RAW COUNTS of the dash characters in each poem and have NOTHING to do with Percentages. You need to 
        work out how to produce percentages. It looks like you want to plot percentages based on the total number of dashes as 100%, and
        each published version's use of dashes as a distinct ratio over that original count. 
       
        -->        
              <xsl:for-each select="$DickinsonColl//TEI">
                  <xsl:variable name="poemNumber" select="number(substring-after(.//idno, '6'))"/>
                  
                 <!--ebb: Here's one way to calculate the dashes, using analyze-string within an inner for-each loop.
                 We need a for-each because we have to look inside each element that contains a dash (within each poem). Then
                 we use analyze-string to isolate the dash characters, and output a letter "X" every time it finds one. As this variable loops through
                 each text node, it accumulates a string of X characters for every dash it finds. In the variable following
                 this one, $dashCount, we calculate the string-length of those X's.-->
                  
                  <xsl:variable name="nonRdgDash">
                      <xsl:for-each select="//l[text()[contains(., '&#8212;')]]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountNonRdg">
                      <xsl:value-of select="string-length($nonRdgDash)"/>
                  </xsl:variable>
                  
                  <xsl:variable name="dashX">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#df6') or contains(., 'var')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                       <xsl:matching-substring>
                           <xsl:text>X</xsl:text>
                       </xsl:matching-substring>        
                      </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountDickinson">
                      <xsl:value-of select="string-length($dashX) + $dashCountNonRdg"/>
                  </xsl:variable>
                  
                  <xsl:variable name="ceDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#ce')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountCE">
                      <xsl:value-of select="string-length($ceDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="CER">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountCE) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  <xsl:variable name="lsdDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#lSD')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountlSD">
                      <xsl:value-of select="string-length($lsdDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="lSD">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountlSD) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="bmDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#bm')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountBM">
                      <xsl:value-of select="string-length($bmDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="bm">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountBM) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="fhDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#fh')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountFH">
                      <xsl:value-of select="string-length($fhDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="fh">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountFH) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems3Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems3')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS3">
                      <xsl:value-of select="string-length($poems3Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems3">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS3) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems2Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems2')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS2">
                      <xsl:value-of select="string-length($poems2Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems2">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS2) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="poems1Dash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#poems1')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountPOEMS1">
                      <xsl:value-of select="string-length($poems1Dash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="poems1">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountPOEMS1) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="LETTERDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#LETTER')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountLETTER">
                      <xsl:value-of select="string-length($LETTERDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="LETTER">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountLETTER) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="DDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#D')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountD">
                      <xsl:value-of select="string-length($DDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="D">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountD) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                  
                  <xsl:variable name="CPDash">
                      <xsl:for-each select=".//body//rdg[@wit[contains(., '#CP')]][contains(., '&#8212;')]">
                          <xsl:analyze-string select="./text()[contains(., '&#8212;')]" regex="&#8212;">
                              <xsl:matching-substring>
                                  <xsl:text>X</xsl:text>
                              </xsl:matching-substring>        
                          </xsl:analyze-string>
                      </xsl:for-each>
                  </xsl:variable>
                  <xsl:variable name="dashCountCP">
                      <xsl:value-of select="string-length($CPDash) + $dashCountNonRdg"/>
                  </xsl:variable>
                  <xsl:variable name="CP">
                      <xsl:value-of select="(($dashCountDickinson - $dashCountCP) div $dashCountDickinson) * 100"/>
                  </xsl:variable>
                 
                  <!--ebb: Here is an alternate way to count the dashes (commented out variables below). These variables 
                      calculate the dash count thus:
                      1) We first calculate the string-length of the node that contains one or more dashes, 
                      2) Then we use translate() to remove the dashes out of the string, and
                      3) Finally we subtract the shorter string-length (without dashes) from the first
                      string-length. This approach yields the same values as the one I've activated above.
                 <xsl:variable name="dashContainers">
                      <xsl:value-of select=".//body//*/text()[contains(., '&#8212;')]"/>
                  </xsl:variable>
                  <!-\-ebb: This variable, $dashContainers, steps down from the body element in each file in the collection, and 
                      holds the text nodes of any element that contain dash characters. -\->
              <xsl:variable name="dashCount">
                  <xsl:value-of select="string-length($dashContainers) - string-length(translate($dashContainers, '&#8212;', ''))"/>
                  </xsl:variable>-->
               
              <!--ebb: You'll maybe want to comment out this "Dash Count!" below or use it differently in an SVG element: I just wanted a 
              diagnostic reading of the dash count in the output code while checking! -->
              <xsl:comment><xsl:text>Poem number: </xsl:text><xsl:value-of select="$poemNumber"/>
                  <xsl:text>. Dash Count: </xsl:text><xsl:value-of select="$dashCountDickinson"/>
              <xsl:text> CE % Reduction: </xsl:text><xsl:value-of select="$CER"/>
              <xsl:text> CE Dash Count: </xsl:text><xsl:value-of select="$dashCountCE"/></xsl:comment> 
                  
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#ce')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-27.2}" x2="{($poemNumber*$x-interval)-27.2}" y1="0" y2="-{$CER*$y-interval}" stroke="#0099CC" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-27.2}" cy="-{$CER*$y-interval}" r="1.5" fill="#0099CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#lSD')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-24.4}" x2="{($poemNumber*$x-interval)-24.4}" y1="0" y2="-{$lSD*$y-interval}" stroke="#ec008c" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-24.4}" cy="-{$lSD*$y-interval}" r="1.5" fill="#ec008c" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#bm')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-21.6}" x2="{($poemNumber*$x-interval)-21.6}" y1="0" y2="-{$bm*$y-interval}" stroke="#8800CC" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-21.6}" cy="-{$bm*$y-interval}" r="1.5" fill="#8800CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#fh')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-18.8}" x2="{($poemNumber*$x-interval)-18.8}" y1="0" y2="-{$fh*$y-interval}" stroke="#2200CC" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-18.8}" cy="-{$fh*$y-interval}" r="1.5" fill="#2200CC" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems3')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-16}" x2="{($poemNumber*$x-interval)-16}" y1="0" y2="-{$poems3*$y-interval}" stroke="#ACE500" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-16}" cy="-{$poems3*$y-interval}" r="1.5" fill="#ACE500" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems2')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-13.2}" x2="{($poemNumber*$x-interval)-13.2}" y1="0" y2="-{$poems2*$y-interval}" stroke="#FFFF00" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-13.2}" cy="-{$poems2*$y-interval}" r="1.5" fill="#FFFF00" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#poems1')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-10.4}" x2="{($poemNumber*$x-interval)-10.4}" y1="0" y2="-{$poems1*$y-interval}" stroke="#FF9900" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-10.4}" cy="-{$poems1*$y-interval}" r="1.5" fill="#FF9900" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#LETTER')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-7.6}" x2="{($poemNumber*$x-interval)-7.6}" y1="0" y2="-{$LETTER*$y-interval}" stroke="#008080" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-7.6}" cy="-{$LETTER*$y-interval}" r="1.5" fill="#008080" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#D')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-4.8}" x2="{($poemNumber*$x-interval)-4.8}" y1="0" y2="-{$D*$y-interval}" stroke="#006622" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-4.8}" cy="-{$D*$y-interval}" r="1.5" fill="#006622" /></xsl:if>
                  
                  <xsl:if test="(count(//rdg[@wit[contains(., '#CP')]])) &gt; 0"><line x1="{($poemNumber*$x-interval)-2}" x2="{($poemNumber*$x-interval)-2}" y1="0" y2="-{$CP*$y-interval}" stroke="#e64d00" stroke-width="1.5"/><circle cx="{($poemNumber*$x-interval)-2}" cy="-{$CP*$y-interval}" r="1.5" fill="#e64d00" /></xsl:if>
                  </xsl:for-each>
                  </g>
            </g>
        </svg>
    </xsl:template>
   
    
</xsl:stylesheet>