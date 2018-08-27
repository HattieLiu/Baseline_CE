<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="PaymentPeriod1.xsl"/>
<!--  *********** point <PaymentTerms1> Start ********** -->
	<xsl:template name="PaymentTerms1">
		<xsl:param name="PaymentTerms1"/>
		<xsl:param name="PaymentTerms1_parent"/>
		<xsl:variable name="PaymentTerms1_name" select="name($PaymentTerms1)"/>
		<xsl:variable name="PaymentTerms1_pname" select="$PaymentTerms1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PaymentTerms1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrPmtTermsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrPmtTerms'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PctgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Pctg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="$PaymentTerms1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="$PaymentTerms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:OthrPmtTerms != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$OthrPmtTermsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTermsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_OthrPmtTerms</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:OthrPmtTerms"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PaymentPeriod1" select="$PaymentTerms1/Doc:PmtCd"/>
						<xsl:call-template name="PaymentPeriod1">
							<xsl:with-param name="PaymentPeriod1" select="$PaymentPeriod1"/>
							<xsl:with-param name="PaymentPeriod1_parent">
							      <xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="$PaymentTerms1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:Pctg != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$PctgDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Pctg</xsl:attribute>
									<xsl:attribute name="class">W_4</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:Pctg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$PaymentTerms1">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$AmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms1_pname"/>_<xsl:value-of select="substring($PaymentTerms1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms1/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PaymentTerms1> end ********** -->
</xsl:stylesheet>
