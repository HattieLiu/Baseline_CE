<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="TransactionStatus2.xsl"/>
<xsl:include href="TimeOutEvent1.xsl"/>
<xsl:template name="TimeOutResult1">
		<xsl:param name="TimeOutResult1"/>
		<xsl:variable name="TimeOutResult1_name" select="name($TimeOutResult1)"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TimeOutResult1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Id'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TimeOutResult1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TimeOutResult1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="TransactionStatus2" select="$TimeOutResult1/Doc:TxFutrSts"/>
						<xsl:call-template name="TransactionStatus2">
							<xsl:with-param name="TransactionStatus2" select="$TransactionStatus2"/>
						</xsl:call-template>
						<xsl:variable name="TimeOutEvent1" select="$TimeOutResult1/Doc:TmOutEvt"/>
						<xsl:call-template name="TimeOutEvent1">
							<xsl:with-param name="TimeOutEvent1" select="$TimeOutEvent1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	
	</xsl:stylesheet>