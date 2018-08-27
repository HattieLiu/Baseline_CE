<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
<!--  *********** point <Tax13> Start ********** -->
	<xsl:template name="Tax13">
		<xsl:param name="Tax13"/>
		<xsl:variable name="Tax13_name" select="name($Tax13)"/>
		<xsl:variable name="TaxDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Tax13_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrTaxTpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrTaxTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Tp'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="RateDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Rate'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Tax13_name"/>')</xsl:attribute>
					<xsl:value-of select="$TaxDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_Tp_check</xsl:attribute>									
									<xsl:for-each select="$Tax13">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
								</xsl:for-each>									
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Tax13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax13/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_OthrAdjstmntTp_check</xsl:attribute>
									<xsl:for-each select="$Tax13">
										<xsl:if test="Doc:OthrTaxTp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
								</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OthrTaxTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_OthrTaxTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax13/Doc:OthrTaxTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_Amt_check</xsl:attribute>							    
										<xsl:for-each select="$Tax13">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>																	
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="Tax13_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax13/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Rate_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_Rate_check</xsl:attribute>								
									 <xsl:for-each select="$Tax13">
										<xsl:if test="Doc:Rate != ''">
								      <xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>																		
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Tax13_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Tax13_name"/>_Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Tax13/Doc:Rate"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Tax13> end ********** -->
</xsl:stylesheet>
