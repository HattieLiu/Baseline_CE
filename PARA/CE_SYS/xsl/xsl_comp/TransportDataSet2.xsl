<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  
   <xsl:include href="TransportDetails1.xsl"/>
  
	<!--  *********** point <TransportDataSet2> Start ********** -->
	<xsl:template name="TransportDataSet2">
		<xsl:param name="TransportDataSet2"/>
		<xsl:variable name="TransportDataSet2_name" select="name($TransportDataSet2)"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportDataSet2_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportDataSet2_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportDataSet2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$TransportDataSet2/Doc:DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($TransportDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9" select="$TransportDataSet2/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_double" select="$TransportDataSet2/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_three" select="$TransportDataSet2/Doc:ShipTo"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_four" select="$TransportDataSet2/Doc:Consgn"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_four"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($TransportDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportDetails1" select="$TransportDataSet2/Doc:TrnsprtInf"/>
						<xsl:call-template name="TransportDetails1">
							<xsl:with-param name="TransportDetails1" select="$TransportDetails1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportDataSet2> end ********** -->
</xsl:stylesheet>
