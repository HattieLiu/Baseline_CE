<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <MultimodalTransport3> start ********** -->
	<xsl:template name="MultimodalTransport3">
		<xsl:param name="MultimodalTransport3"/>
		<xsl:param name="MultimodalTransport3_parent"/>
		<xsl:param name="stmt3" select="MltmdlTrnsprt"/>
		<xsl:variable name="MultimodalTransport3_name" select="name($MultimodalTransport3)"/>
		<xsl:variable name="MultimodalTransport3_pname" select="$MultimodalTransport3_parent"/>
		<xsl:variable name="MltmdlTrnsprtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$MultimodalTransport3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TakngInChrgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TakngInChrg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfFnlDstnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfFnlDstn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/>')</xsl:attribute>
					<xsl:value-of select="$MltmdlTrnsprtDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="width">95%</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:element name="DIV">
									<xsl:attribute name="style">overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
										<xsl:for-each select="$MultimodalTransport3/TakngInChrg">
											<tr>
												<xsl:element name="TD">
													<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
													<xsl:attribute name="height">25</xsl:attribute>
													<xsl:value-of select="$TakngInChrgDesc"/>
													<xsl:element name="INPUT">
														<xsl:attribute name="type">text</xsl:attribute>
														<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/>_TakngInChrg</xsl:attribute>
														<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/>_<xsl:value-of select="$TakngInChrgDesc"/></xsl:attribute>
														<xsl:attribute name="class">CHAR_M</xsl:attribute>
														<xsl:attribute name="length">35</xsl:attribute>
														<xsl:attribute name="maxlength">35</xsl:attribute>
														<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
														<xsl:attribute name="multi">Y</xsl:attribute>
														<xsl:attribute name="tbi">MltmdlTrnsprt</xsl:attribute>
													</xsl:element>
												</xsl:element>
											</tr>
										</xsl:for-each>
										<xsl:for-each select="$MultimodalTransport3/PlcOfFnlDstn">
											<tr>
												<xsl:element name="TD">
													<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
													<xsl:attribute name="height">25</xsl:attribute>
													<xsl:value-of select="$PlcOfFnlDstnDesc"/>
													<xsl:element name="INPUT">
														<xsl:attribute name="type">text</xsl:attribute>
														<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/>_PlcOfFnlDstn</xsl:attribute>
														<xsl:attribute name="id"><xsl:value-of select="$MultimodalTransport3_pname"/>_<xsl:value-of select="$MultimodalTransport3_name"/>_<xsl:value-of select="$PlcOfFnlDstnDesc"/></xsl:attribute>
														<xsl:attribute name="class">CHAR_M</xsl:attribute>
														<xsl:attribute name="length">35</xsl:attribute>
														<xsl:attribute name="maxlength">35</xsl:attribute>
														<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
														<xsl:attribute name="multi">Y</xsl:attribute>
														<xsl:attribute name="tbi">MltmdlTrnsprt</xsl:attribute>
													</xsl:element>
												</xsl:element>
											</tr>
										</xsl:for-each>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MultimodalTransport3> end ********** -->
</xsl:stylesheet>
