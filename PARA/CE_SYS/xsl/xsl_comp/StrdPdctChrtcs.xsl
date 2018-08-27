<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template name="StrdPdctChrtcs">
		<xsl:param name="StrdPdctChrtcs"/>
		<xsl:param name="StrdPdctChrtcs_parentName"/>
		<xsl:variable name="StrdPdctChrtcs_name" select="name($StrdPdctChrtcs)"/>
		<xsl:variable name="StrdPdctChrtcs_pName" select="$StrdPdctChrtcs_parentName"/>
		<xsl:variable name="StrdPdctChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$StrdPdctChrtcs_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Tp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ChrtcsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Chrtcs'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$StrdPdctChrtcs_parentName"/>_check</xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$StrdPdctChrtcs_pName"/>_Doc:StrdPdctChrtcs</xsl:attribute>
					<xsl:attribute name="txs"><xsl:value-of select="$StrdPdctChrtcs_pName"/>_Doc:OthrPdctChrtcs</xsl:attribute>
					<xsl:attribute name="onClick">radioCheck_layer()</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$StrdPdctChrtcs_pName"/>_<xsl:value-of select="$StrdPdctChrtcs_name"/>')</xsl:attribute>
					<xsl:value-of select="$StrdPdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$StrdPdctChrtcs_pName"/>_<xsl:value-of select="$StrdPdctChrtcs_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:StrdPdctChrtcs">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:variable name="Select1" select="document('../Code.xml')//root/ProductCharacteristics1Code"></xsl:variable>
				                <xsl:call-template name="Select">
				                     <xsl:with-param name="Select" select="$Select1"/>
				                 </xsl:call-template>
								<!--<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TpDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$StrdPdctChrtcs/Doc:Tp"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:StrdPdctChrtcs</xsl:attribute>
								</xsl:element>-->
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ChrtcsDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Chrtcs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChrtcsDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$StrdPdctChrtcs/Doc:Chrtcs"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:StrdPdctChrtcs</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
