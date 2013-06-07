		<div class="story-row" id="xnews-{$link_shakebox_index}" {if $link_shakebox_currentuser_reports gt 0} style="opacity:0.3;filter:alpha(opacity = 30)"{/if}>


{checkActionsTpl location="tpl_pligg_story_start"}
	{if $Voting_Method eq 1}
			
			<div class="vote-box">
				
				{checkActionsTpl location="tpl_pligg_story_votebox_start"}
							
							
							{if $link_shakebox_votes  eq 1}
					<span class="vote-number">
						<span id="xvotes-{$link_shakebox_index}" >{$link_shakebox_votes}</span> <span class="votetext">{#PLIGG_Visual_Vote_For_It#}</span>
					</span>
							{/if}
					
							{if $link_shakebox_votes  gt 1}
					<span class="vote-number"> 
						<span id="xvotes-{$link_shakebox_index}" >{$link_shakebox_votes}</span> <span class="votetext">{#PLIGG_Visual_Votes#}</span>
					</span>
							{/if}
					
					
					<span class="vote-button"  id="xvote-{$link_shakebox_index}">
						{if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}
							<a href="javascript:{$link_shakebox_javascript_vote}">{#PLIGG_Visual_Vote_For_It#}</a>
						{else}
							{if $link_shakebox_currentuser_reports neq 0}
								<span>{#PLIGG_Visual_Vote_Report#}</span>
							{else}
								{if $pagename eq "user" && $user_logged_in neq $link_submitter}
									<a href="javascript:{$link_shakebox_javascript_unvote}">{#PLIGG_Visual_Unvote_For_It#}</a>
								{else}
									<span>{#PLIGG_Visual_Vote_Cast#}</span>
								{/if}	
							{/if}
						{/if}
					</span>
				{checkActionsTpl location="tpl_pligg_story_votebox_end"}
				</div>
			
	{/if}	



	<div class="story-left-margin">
	

	
	
	
	
						{if $Voting_Method eq 2}


		<div class="star-box" id="ls_title-{$link_shakebox_index}">
		
			<ul class='star-rating{$star_class}' id="xvotes-{$link_shakebox_index}">
				<li class="current-rating" style="width: {$link_rating_width}px;" id="xvote-{$link_shakebox_index}"></li>
				<span id="mnmc-{$link_shakebox_index}">
					{if $link_shakebox_currentuser_votes eq 0}
						<li><a href="javascript:{$link_shakebox_javascript_vote_1star}" class='one-star'>1</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_2star}" class='two-stars'>2</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_3star}" class='three-stars'>3</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_4star}" class='four-stars'>4</a></li>
						<li><a href="javascript:{$link_shakebox_javascript_vote_5star}" class='five-stars'>5</a></li>
					{else}
						<li class='one-star-noh'>1</li>
						<li class='two-stars-noh'>2</li>
						<li class='three-stars-noh'>3</li>
						<li class='four-stars-noh'>4</li>
						<li class='five-stars-noh'>5</li>
					{/if}
				</span>
			</ul>
		
		</div>

	{/if}
	
	
	
	
	
			<h2 class="story-title" id="title-{$link_shakebox_index}">
			{checkActionsTpl location="tpl_pligg_story_title_start"}
			{if $use_title_as_link eq true}
				{if $url_short neq "http://" && $url_short neq "://"}
					<a href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if} {if $story_status neq "published"}rel="nofollow"{/if}>{$title_short}</a>
				{else}
					<a href="{$story_url}" {if $open_in_new_window eq true} target="_blank"{/if}>{$title_short}</a>
				{/if}
			 {else}
				{if $pagename eq "story" && $url_short neq "http://" && $url_short neq "://"}
					<a href="{$url}" {if $open_in_new_window eq true} target="_blank"{/if} {if $story_status neq "published"}rel="nofollow"{/if}>{$title_short}</a>
				{else} 
				  <a href="{$story_url}">{$title_short}</a>
				{/if}
			{/if}
			{checkActionsTpl location="tpl_pligg_story_title_end"}
			</h2>
			
			
			
			

			
			
			
			
			<div class="l_border">
			
			
			
			
			
			
			
			
			
			
			
<div class="story-top-info">
{#PLIGG_Visual_LS_Posted_By#} 
				{* {if $UseAvatars neq "0"}<span id="ls_avatar-{$link_shakebox_index}"><img src="{$Avatar_ImgSrc}" alt="Avatar" /></span>{/if} *}
				<a href="{$submitter_profile_url}">{$link_submitter}</a> {$link_submit_timeago} {#PLIGG_Visual_Comment_Ago#}
				
								<a href="{$category_url}">{$link_category}</a>

			
				{if $link_group_id eq 0}
					{if $isadmin eq "yes" || $user_logged_in eq $link_submitter}
						<span class="adminlinksbuttom"> | <a href="javascript://" onclick="var replydisplay=document.getElementById('ls_adminlinks-{$link_shakebox_index}').style.display ? '' : 'none';document.getElementById('ls_adminlinks-{$link_shakebox_index}').style.display = replydisplay;">{#PLIGG_Visual_Admin_Links#}</a></span>
					{/if}
					{if $isadmin eq "yes"}
							| <a href="{$my_pligg_base}/delete.php?link_id={$link_id}">{#PLIGG_Visual_AdminPanel_Discard#}</a>
					{/if} 
				{/if}	
				{if $link_group_id neq 0}
					{if $isadmin eq "yes" || $user_logged_in eq $link_submitter}	
					<iframe height="0px;" width="0px;" frameborder="0" name="story_status"></iframe>
						<span class="groupstorystatus"><a style='text-decoration:none;padding:2px 0 0 20px;' target="story_status" href="javascript://" onclick="show_hide_user_links(document.getElementById('stories_status-{$link_shakebox_index}'));">{#PLIGG_Visual_Group_Story_Status#}</a></span>&nbsp;
						<span id="stories_status-{$link_shakebox_index}" style="display:none;">
							<a target="story_status" href="{$group_story_links_publish}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Published#}</a>
							<a target="story_status" href="{$group_story_links_queued}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Upcoming#}</a>
							<a target="story_status" href="{$group_story_links_discard}" onclick="show_hide_user_links(document.getElementById('story_status_success-{$link_shakebox_index}'))">{#PLIGG_Visual_AdminPanel_Discard#}</a>
						</span> &nbsp;
						<span id="story_status_success-{$link_shakebox_index}" style="display:none;">
							&raquo; {#PLIGG_MiscWords_Save_Links_Success#}
						</span>
					{/if}
				{/if}
			
				<span id="ls_adminlinks-{$link_shakebox_index}" style="display:none">
					{if $isadmin eq "yes"}
						<span id="ls_admin_links-{$link_shakebox_index}" class="adminlinks">
							<br /><a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a>
							<br /><a href="{$story_admin_url}">{#PLIGG_Visual_LS_Admin_Status#}</a>
                            <br /><a href="{$my_base_url}{$my_pligg_base}/admin/admin_users.php?mode=view&user={$link_submitter}">{#PLIGG_Visual_AdminPanel_Manage_Nav#}-{$link_submitter}</a>
							{checkActionsTpl location="tpl_link_summary_admin_links"}
						</span>
					{else}
						{if $user_logged_in eq $link_submitter}
							<span id="ls_user_edit_links-{$link_shakebox_index}"><br /><a href="{$story_edit_url}">{#PLIGG_Visual_LS_Admin_Edit#}</a></span>
						{/if}
					{/if}
				</span>
			</div>
		









		<div class="storycontent">
		{checkActionsTpl location="tpl_link_summary_pre_story_content"}
		{if $pagename eq "story"}{checkActionsTpl location="tpl_pligg_story_body_start_full"}{else}{checkActionsTpl location="tpl_pligg_story_body_start"}{/if}

		{if $viewtype neq "short"}
			<span class="news-body-text">
				<span id="ls_contents-{$link_shakebox_index}">
					{if $show_content neq 'FALSE'}
					
						{if $url_short neq "http://" && $url_short neq "://"}
					<a href="{$url}" class="source-link" {if $open_in_new_window eq true} target="_blank"{/if}  {if $story_status neq "published"}rel="nofollow"{/if}>{$url_short} &#8212; </a> 
				{else}
				
				{/if}
			
					
					
					
					

						{$story_content}
					{/if}
					{if $Enable_Extra_Field_1 eq 1}{if $link_field1 neq ""}<br/><b>{$Field_1_Title}:</b> {$link_field1}{/if}{/if}
					{if $Enable_Extra_Field_2 eq 1}{if $link_field2 neq ""}<br/><b>{$Field_2_Title}:</b> {$link_field2}{/if}{/if}
					{if $Enable_Extra_Field_3 eq 1}{if $link_field3 neq ""}<br/><b>{$Field_3_Title}:</b> {$link_field3}{/if}{/if}
					{if $Enable_Extra_Field_4 eq 1}{if $link_field4 neq ""}<br/><b>{$Field_4_Title}:</b> {$link_field4}{/if}{/if}
					{if $Enable_Extra_Field_5 eq 1}{if $link_field5 neq ""}<br/><b>{$Field_5_Title}:</b> {$link_field5}{/if}{/if}
					{if $Enable_Extra_Field_6 eq 1}{if $link_field6 neq ""}<br/><b>{$Field_6_Title}:</b> {$link_field6}{/if}{/if}
					{if $Enable_Extra_Field_7 eq 1}{if $link_field7 neq ""}<br/><b>{$Field_7_Title}:</b> {$link_field7}{/if}{/if}
					{if $Enable_Extra_Field_8 eq 1}{if $link_field8 neq ""}<br/><b>{$Field_8_Title}:</b> {$link_field8}{/if}{/if}
					{if $Enable_Extra_Field_9 eq 1}{if $link_field9 neq ""}<br/><b>{$Field_9_Title}:</b> {$link_field9}{/if}{/if}
					{if $Enable_Extra_Field_10 eq 1}{if $link_field10 neq ""}<br/><b>{$Field_10_Title}:</b> {$link_field10}{/if}{/if}
					{if $Enable_Extra_Field_11 eq 1}{if $link_field11 neq ""}<br/><b>{$Field_11_Title}:</b> {$link_field11}{/if}{/if}
					{if $Enable_Extra_Field_12 eq 1}{if $link_field12 neq ""}<br/><b>{$Field_12_Title}:</b> {$link_field12}{/if}{/if}
					{if $Enable_Extra_Field_13 eq 1}{if $link_field13 neq ""}<br/><b>{$Field_13_Title}:</b> {$link_field13}{/if}{/if}
					{if $Enable_Extra_Field_14 eq 1}{if $link_field14 neq ""}<br/><b>{$Field_14_Title}:</b> {$link_field14}{/if}{/if}
					{if $Enable_Extra_Field_15 eq 1}{if $link_field15 neq ""}<br/><b>{$Field_15_Title}:</b> {$link_field15}{/if}{/if} 		  			
					 {if $pagename neq "story" && $pagename neq "submit"} <a href="{$story_url}" class="more">{#PLIGG_Visual_Read_More#}</a> {/if}

				</span>
			</span>
			{checkActionsTpl location="tpl_pligg_story_body_end"}
		{/if}
		</div>
	









<div class="story-tools">

		{checkActionsTpl location="tpl_pligg_story_tools_start"}
		<span id="ls_comments_url-{$link_shakebox_index}">
			{if $story_comment_count eq 0}
				<span class="linksummaryDiscuss"><a href="{$story_url}#discuss" class="comments">{#PLIGG_MiscWords_Discuss#}</a></span>
			{/if}
			{if $story_comment_count eq 1}
				<span class="linksummaryHasComment"><a href="{$story_url}#comments" class="comments2">{$story_comment_count} {#PLIGG_MiscWords_Comment#}</a></span>
			{/if}
			{if $story_comment_count gt 1}
				<span class="linksummaryHasComment"><a href="{$story_url}#comments" class="comments2">{$story_comment_count} {#PLIGG_MiscWords_Comments#}</a></span>
			{/if}
		</span> 
		
		{if $user_logged_in neq "" && $user_logged_in neq $link_submitter}  
			
			{if $link_mine eq 0}
				<span class="linksummarySaveLink"><a target="add_stories" href="{$user_url_add_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Save#}</a>
			{else}
				<span class="linksummaryRemoveLink"><a target="add_stories" href="{$user_url_remove_links}" onclick="show_hide_user_links(document.getElementById('stories-{$link_shakebox_index}'));">{#PLIGG_MiscWords_Save_Links_Remove#}</a>
			{/if}
			</span>
		{/if}		
		
		{if $link_shakebox_currentuser_votes eq 0 && $link_shakebox_currentuser_reports eq 0}
			
			<span id="xreport-{$link_shakebox_index}"><span class="linksummaryBury"><a href="javascript:{$link_shakebox_javascript_report}">{#PLIGG_Visual_Vote_Bury#}</a></span></span>
		{/if}
		 
		 
		 
		 
		 
		 
		 
		 
		{if $Enable_Recommend eq 1 && $user_logged_in neq ""}
			
			<span id="ls_recommend-{$link_shakebox_index}">
				<span class="linksummaryTellFriend">
					<a href="javascript://" onclick="show_recommend({$link_shakebox_index}, {$link_id}, '{$instpath}');"> {#PLIGG_Visual_Recommend_Link_Text#}</a>&nbsp;
				</span>
			</span> 
		{/if}		

		{if $enable_group eq "true"}
			{if $user_logged_in neq ""}
				<span class="group_sharing"><a href="javascript://" onclick="{if $get_group_membered}var replydisplay=document.getElementById('group_share-{$link_shakebox_index}').style.display ? '' : 'none';document.getElementById('group_share-{$link_shakebox_index}').style.display = replydisplay;{else}alert('{#PLIGG_Visual_No_Groups#}');{/if}">{#PLIGG_Visual_Group_Share#}</a></span>
			
			{/if}
		{/if}
		
		
						{checkActionsTpl location="tpl_pligg_story_tools_end"}



		{if $user_logged_in neq "" && $user_logged_in neq $link_submitter}  
			<iframe height="0px;" width="0px;" frameborder="0" name="add_stories"></iframe>

			<span id="stories-{$link_shakebox_index}" class="tool-show" style="display:none;"> &raquo; {#PLIGG_MiscWords_Save_Links_Success#} <a href="{$user_url_saved}">{#PLIGG_MiscWords_Save_Links_Go_To_Saved#}</a></span>


	{/if}		





		{if $Enable_Recommend eq 1}
			{if $Recommend_Type eq 1}
			
				<span id="emailto-{$link_shakebox_index}" style="display:none"></span>
			{/if}
		{/if}
		
		
		
		{if $enable_group eq "true"}
			{if $user_logged_in neq ""}
			<span id = "group_share-{$link_shakebox_index}" style="display:none;">
					<div class="tool-show">{$get_group_membered}</div>
				</span>
			{/if}
		{/if}
	
	
	

	
	
							
										{if $enable_tags}	
			{if $tags ne ''}
        <br/>{#PLIGG_Visual_Tags_Link_Summary#}: 
				{section name=thistag loop=$tag_array}
					<a href="{$tags_url_array[thistag]}">{$tag_array[thistag]}</a>
				{/section}
				
			{/if}
		{/if}	
	
	
	
	
	
		 </div><!-- end story-tools -->
		 
		 		 </div><!-- end l_border -->

		 
		 	 </div><!-- End story left margin  -->

		 
		 
		 
		 
		 
		 
		 
		 

	{checkActionsTpl location="tpl_link_summary_end"}
</div><!-- End story-row-->
{checkActionsTpl location="tpl_pligg_story_end"}
