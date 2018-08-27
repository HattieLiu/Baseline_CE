<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Goods.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.019.001.01">
		<html>
			<head>
				<title>CS Eximbills Enterprise Trade Servise Utility Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
				<script language="JavaScript">
			function Swap(n){
			var x;
			y=document.getElementById(n);
			y=y.style;
			if(y.display=="none"){
				y.display="block"		
				}
			else if(y.display=="block"){
				y.display="none";
				}
			}
		</script>
			</head>
			<body>
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:text>InitialBaselineSubmission(tsmt.019.001.01)</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<td width="1%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="98%" border="0" cellpadding="0" cellspacing="0">
								<!--	
								<xsl:choose> 
								<xsl:when test="*[tsmt.001.001.01]"> 
								-->
								<!-- SubmissnId -->
								<xsl:variable name="MessageIdentification1" select="Doc:SubmissnId"/>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- SubmitrTxRef -->
								<xsl:variable name="SimpleIdentificationInformation" select="Doc:SubmitrTxRef"/>
								<xsl:call-template name="SimpleIdentificationInformation">
									<xsl:with-param name="SimpleIdentificationInformation" select="$SimpleIdentificationInformation"/>
								</xsl:call-template>
								<!-- Instr -->
								<xsl:variable name="InstructionType1" select="Doc:Instr"/>
								<xsl:call-template name="InstructionType1">
									<xsl:with-param name="InstructionType1" select="$InstructionType1"/>
								</xsl:call-template>
								<!-- Baseln -->
								<xsl:variable name="Baseline1" select="Doc:Baseln"/>
								<xsl:call-template name="Baseline1">
									<xsl:with-param name="Baseline1" select="$Baseline1"/>
								</xsl:call-template>
								<!-- BuyrCtctPrsn -->
								<xsl:variable name="ContactIdentification1" select="Doc:BuyrCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1"/>
								</xsl:call-template>
								<!-- SellrCtctPrsn -->
								<xsl:variable name="ContactIdentification1_double" select="Doc:SellrCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_double"/>
								</xsl:call-template>
								<!-- BuyrBkCtctPrsn -->
								<xsl:variable name="ContactIdentification1_three" select="Doc:BuyrBkCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_three"/>
								</xsl:call-template>
								<!-- SellrBkCtctPrsn -->
								<xsl:variable name="ContactIdentification1_four" select="Doc:SellrBkCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_four"/>
								</xsl:call-template>
								<!-- BllToCtctPrsn -->
								<xsl:variable name="ContactIdentification1_five" select="Doc:BllToCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_five"/>
								</xsl:call-template>
								<!-- ShipToCtctPrsn -->
								<xsl:variable name="ContactIdentification1_six" select="Doc:ShipToCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_six"/>
								</xsl:call-template>
								<!-- ConsgnCtctPrsn -->
								<xsl:variable name="ContactIdentification1_seven" select="Doc:ConsgnCtctPrsn"/>
								<xsl:call-template name="ContactIdentification1">
									<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1_seven"/>
								</xsl:call-template>
								<!--</xsl:when>
									 <xsl:otherwise>
										<xsl:apply-templates select="ReqForActn" />
									 </xsl:otherwise> 
								    </xsl:choose> -->
								<!-- bottom -->
							</table>
						</td>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
