<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <xsl:for-each select="collection">
     <OL>
       <xsl:for-each  select="schema">
          <p> </p>
          <LI>
          <xsl:if test="sameText">
              <b> SAME TEXT AS PREVIOUS QUESTION </b> <br></br>
          </xsl:if>
          <xsl:if test="variantText">
              <b> NOTE: TEXT IS DIFFERENT FROM PREVIOUS QUESTION</b> <br></br>
          </xsl:if>
          <xsl:for-each select="text"> 
             <xsl:if test="txt1"> 
                 <xsl:value-of select="txt1"> </xsl:value-of>
             </xsl:if>
             <b> <xsl:value-of select="pron"> </xsl:value-of></b>
             <xsl:if test="txt2"> 
                 <xsl:value-of select="txt2"> </xsl:value-of>
             </xsl:if>
         </xsl:for-each> 
         <p></p> <em> Snippet: </em> 
           <xsl:for-each select="quote"> 
             <xsl:if test="quote1"> 
                 <xsl:value-of select="quote1"> </xsl:value-of>
             </xsl:if>
             <b> <xsl:value-of select="pron"> </xsl:value-of></b>
             <xsl:if test="quote2"> 
                 <xsl:value-of select="quote2"> </xsl:value-of>
             </xsl:if>
         </xsl:for-each>
        <p></p>
         <xsl:for-each select="answers">
             <OL type="A"> 
                <xsl:for-each select="answer">
                    <LI> 
                      <xsl:value-of select="."> </xsl:value-of>
                    </LI>
                </xsl:for-each>
             </OL>   
          </xsl:for-each>
         <p>
           <xsl:if test="correctAnswer">
                <b> Correct Answer: </b> 
                   <xsl:value-of select="correctAnswer"> </xsl:value-of>
           </xsl:if>
           <xsl:if test="humanSubjects">
                <br> </br> <b> Results on human subjects: </b> 
                    <xsl:value-of select="humanSubjects"> </xsl:value-of>
           </xsl:if>
           <xsl:if test="source">
                <br> </br> <b> Source: </b> 
                    <xsl:value-of select="source"> </xsl:value-of>
           </xsl:if>
         </p>
        </LI>
      </xsl:for-each>
     </OL>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

