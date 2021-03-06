<!--
 - Copyright (C) 2005, 2007, 2014-2016  Internet Systems Consortium, Inc. ("ISC")
 -
 - Permission to use, copy, modify, and/or distribute this software for any
 - purpose with or without fee is hereby granted, provided that the above
 - copyright notice and this permission notice appear in all copies.
 -
 - THE SOFTWARE IS PROVIDED "AS IS" AND ISC DISCLAIMS ALL WARRANTIES WITH
 - REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
 - AND FITNESS.  IN NO EVENT SHALL ISC BE LIABLE FOR ANY SPECIAL, DIRECT,
 - INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
 - LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
 - OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
 - PERFORMANCE OF THIS SOFTWARE.
-->

<!-- ISC customizations for Docbook-XSL HTML generator -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:db="http://docbook.org/ns/docbook">

  <!-- Import the Docbook HTML stuff -->
  <xsl:import href="html/docbook.xsl"/>

  <!-- Readable HTML output, please -->
  <xsl:output indent="yes"/>

  <!-- ANSI C function prototypes, please -->
  <xsl:param name="funcsynopsis.style">ansi</xsl:param>

  <!-- Use ranges when constructing copyrights -->
  <xsl:param name="make.year.ranges" select="1"/>

  <!-- Include our copyright generator -->
  <xsl:include href="copyright.xsl"/>

  <!-- Set comment convention for this output format -->
  <xsl:param name="isc.copyright.leader"> - </xsl:param>
  <xsl:param name="isc.copyright.breakline"/>

  <!-- Generate consistent id attributes -->
  <xsl:param name="generate.consistent.ids" select="1"/>

  <!-- Override Docbook template to insert DOCTYPE and copyright -->
  <xsl:template name="user.preroot">
    <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:comment>
      <xsl:text>&#10;</xsl:text>
      <xsl:value-of select="$isc.copyright"/>
    </xsl:comment>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>

  <xsl:template name="root.attributes">
    <xsl:attribute name="lang">en</xsl:attribute>
  </xsl:template>

  <xsl:template name="user.footer.navigation">
    <p style="text-align: center;">BIND 9.10.6</p>
  </xsl:template>

</xsl:stylesheet>

<!--
  - Local variables:
  - mode: sgml
  - End:
 -->
