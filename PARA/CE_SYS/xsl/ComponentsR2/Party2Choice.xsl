<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="OrganisationIdentification2.xsl"/>
	<xsl:template name="Party2Choice">
		<xsl:param name="Party2Choice"/>
		<xsl:param name="Party2Choice_parent"/>
		<xsl:variable name="Party2Choice_name" select="name($Party2Choice)"/>
		<xsl:variable name="Party2Choice_pname" select="$Party2Choice_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$Party2Choice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Party2Choice_pname"/>_<xsl:value-of select="$Party2Choice_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$Party2Choice_pname"/>_<xsl:value-of select="$Party2Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="OrganisationIdentification2" select="$Party2Choice/OrgId"/>
						<xsl:call-template name="OrganisationIdentification2">
							<xsl:with-param name="OrganisationIdentification2" select="$OrganisationIdentification2"/>
							<xsl:with-param name="OrganisationIdentification2_parent">
								<xsl:value-of select="$Party2Choice_pname"/>_<xsl:value-of select="$Party2Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$Party2Choice/PrvtId">
							<xsl:variable name="PersonIdentification3" select="."/>
							<xsl:call-template name="PersonIdentification3">
								<xsl:with-param name="PersonIdentification3" select="$PersonIdentification3"/>
								<xsl:with-param name="PersonIdentification3_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$Party2Choice_pname"/>_<xsl:value-of select="$Party2Choice_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
