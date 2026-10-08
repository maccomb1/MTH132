<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Import the normal PreTeXt LaTeX conversion -->
    <xsl:import href="./core/pretext-latex.xsl"/>

    <xsl:output method="text"/>

    <!-- ========================================================= -->
    <!-- THEOREMS, LEMMAS, PROPOSITIONS, COROLLARIES, ETC.         -->
    <!-- ========================================================= -->

    <xsl:template
        match="theorem|lemma|corollary|proposition|claim|fact|identity|algorithm|
               axiom|conjecture|principle|heuristic|hypothesis|assumption"
        mode="tcb-style">

        <xsl:text>
            enhanced,
            breakable,
            colback=green!3!white,
            colframe=green!20!black,
            colbacktitle=green!20!black,
            coltitle=white,
            fonttitle=\bfseries,
            boxrule=0.8pt,
            arc=0mm,
            left=2mm,
            right=2mm,
            top=1.5mm,
            bottom=1.5mm,
            before skip=10pt,
            after skip=10pt,
        </xsl:text>
    </xsl:template>


    <!-- ========================================================= -->
    <!-- DEFINITIONS                                                -->
    <!-- ========================================================= -->

    <xsl:template match="definition" mode="tcb-style">

        <xsl:text>
            enhanced,
            breakable,
            colback=green!3!white,
            colframe=green!20!black,
            colbacktitle=green!20!black,
            coltitle=white,
            fonttitle=\bfseries,
            boxrule=0.8pt,
            arc=0mm,
            left=2mm,
            right=2mm,
            top=1.5mm,
            bottom=1.5mm,
            before skip=10pt,
            after skip=10pt,
        </xsl:text>
    </xsl:template>


    <!-- ========================================================= -->
    <!-- EXAMPLES, QUESTIONS, PROBLEMS, AND COMPUTATIONS            -->
    <!-- ========================================================= -->

    <xsl:template
        match="example|question|problem|computation|technology"
        mode="tcb-style">

        <xsl:text>
            enhanced,
            breakable,
            colback=black!2!white,
            colframe=black!35!white,
            colbacktitle=black!8!white,
            coltitle=black,
            fonttitle=\bfseries,
            boxrule=0.8pt,
            arc=0mm,
            left=2mm,
            right=2mm,
            top=1.5mm,
            bottom=1.5mm,
            before skip=10pt,
            after skip=10pt,
        </xsl:text>
    </xsl:template>

<!-- Separator between components inside examples -->
<xsl:template name="exercise-component-separator">
  <xsl:choose>

    <!-- Use a visible rule inside examples -->
    <xsl:when test="ancestor-or-self::example">
      <xsl:text>\par\smallskip%&#xa;</xsl:text>
      <xsl:text>\noindent{\color{black!35!white}\rule{\linewidth}{0.6pt}}\par%&#xa;</xsl:text>
      <xsl:text>\smallskip%&#xa;</xsl:text>
    </xsl:when>

    <!-- Retain PreTeXt's normal separator elsewhere -->
    <xsl:otherwise>
      <xsl:text>\par\smallskip%&#xa;</xsl:text>
    </xsl:otherwise>

  </xsl:choose>
</xsl:template>


    <!-- ========================================================= -->
    <!-- REMARKS, NOTES, OBSERVATIONS, AND INSIGHTS                 -->
    <!-- ========================================================= -->

    <xsl:template
        match="remark|note|observation|insight|convention"
        mode="tcb-style">

        <xsl:text>
            enhanced,
            breakable,
            colback=orange!3!white,
            colframe=orange!60!black,
            colbacktitle=orange!60!black,
            coltitle=white,
            fonttitle=\bfseries,
            boxrule=0.5pt,
            arc=0mm,
            left=2mm,
            right=2mm,
            top=1.5mm,
            bottom=1.5mm,
            before skip=10pt,
            after skip=10pt,
        </xsl:text>
    </xsl:template>


    <!-- ========================================================= -->
    <!-- WARNINGS                                                   -->
    <!-- ========================================================= -->

    <xsl:template match="warning" mode="tcb-style">

        <xsl:text>
            enhanced,
            breakable,
            colback=red!3!white,
            colframe=red!55!black,
            colbacktitle=red!12!white,
            coltitle=black,
            fonttitle=\bfseries,
            boxrule=0.9pt,
            sharp corners,
            left=2mm,
            right=2mm,
            top=1.5mm,
            bottom=1.5mm,
            before skip=10pt,
            after skip=10pt,
        </xsl:text>
    </xsl:template>


<!-- Start every section on a new page 
<xsl:template match="section" mode="newpage">
  <xsl:text>\newpage%&#xa;</xsl:text>
</xsl:template>
-->

</xsl:stylesheet>