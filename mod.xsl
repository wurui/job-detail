<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.job-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-job-detail" ox-mod="job-detail">
            
            <xsl:for-each select="data/info-recruit/i[1]">
            	<table cellpadding="0" cellspacing="0">
            		<thead>
            			<tr>
            				<th colspan="2" class="title">
            					<i class="decoration skin-bgcolor"></i>
            					<xsl:value-of select="title"/>
            				</th>
            			</tr>
            		</thead>
            		<tbody>
            			<tr>
            				<td class="fieldtitle">薪资范围</td>
            				<td>
            					<xsl:value-of select="salary-min"/> - <xsl:value-of select="salary-max"/>
            					元/月
            				</td>
            			</tr>
            			<tr>

            				<td class="fieldtitle">
            					工作地点
            				</td>
            				<td>
            					<xsl:value-of select="location"/>
            				</td>
            			</tr>
            			

            			

            			
            			<tr>
            				<td colspan="2" class="subtitle">
            					<i class="decoration skin-bgcolor"></i>工作描述
            				</td>
            			</tr>
            			<tr>
            				
            				<td colspan="2" class="content">
            					
            					<xsl:value-of select="description" disable-output-escaping="yes"/>
            				</td>
            			</tr>
            			<tr>
            				<td colspan="2" class="subtitle">
            					<i class="decoration skin-bgcolor"></i>基本要求
            				</td>
            			</tr>
            			<tr>
            				<td class="fieldtitle">学历</td>
            				<td>
            					<xsl:value-of select="requirement/degree"/>及以上
            				</td>
            				
            			</tr>
            			<tr>
            				<td class="fieldtitle">工作经验</td>
            				<td>
            					<xsl:value-of select="requirement/workage"/>年及以上
            				</td>
            			</tr>
            			<tr>
            				<td colspan="2" class="subtitle">
            					<i class="decoration skin-bgcolor"></i>任职要求描述
            				</td>
            			</tr>
            			
            			<tr>
            				<td colspan="2" class="content">
            					<xsl:value-of select="requirement/description" disable-output-escaping="yes"/>
            				</td>
            			</tr>
            			<tr>
            				<td colspan="2" class="subtitle">
            					<i class="decoration skin-bgcolor"></i>联系方式
            				</td>
            			</tr>
            			<tr>
            				<td class="fieldtitle">
            					发布时间
            				</td>
            				<td>
            					<xsl:value-of select="createtime/y"/>年<xsl:value-of select="createtime/M"/>月<xsl:value-of select="createtime/d"/>日
            				</td>
            			</tr>

            			
            			<tr>
            				<td class="fieldtitle">发布人</td>
            				<td>
            					<xsl:value-of select="owner"/>　
            				</td>
            			</tr>
            			<tr>
            				<td class="fieldtitle">邮箱</td>
            				<td>
            					<xsl:value-of select="contact"/>　
            				</td>
            			</tr>
            			
            		</tbody>

            	</table>
            	
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
