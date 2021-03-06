<!-- Poster Layout Torrent List -->

<div class="panel panel-primary">
  <div class="panel-heading">
    <h4 class="text-center"><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse0">Recommended Torrents</a></h4>
  </div>
  <div id="collapse0" class="panel-collapse collapse">
    <div class="panel-body">
      <if:rtorr_enabled>
        <table class="table table-bordered">
          <tr>
            <td align="center" class="head">
              <tag:language.CATEGORY />
            </td>
            <td align="center" class="head">
              <tag:language.FILE />
            </td>
            <if:reql1>
              <td align="center" class="head">
                <tag:req_header_comments />
              </td>
            </if:reql1>
            <td align="center" class="head">
              <tag:language.DOWN />
            </td>
            <td align="center" class="head">
              <tag:language.ADDED />
            </td>
            <td align="center" class="head">
              <tag:language.SHORT_S />
            </td>
            <td align="center" class="head">
              <tag:language.SHORT_L />
            </td>
            <td align="center" class="head">
              <tag:req_header_complete />
            </td>
            <td align="center" class="head">
              <tag:language.UPLOADER />
            </td>
            <td align="center" class="head">
              <tag:language.SIZE />
            </td>
            <if:XBTT_1>
              <td align="center" class="head">
                <tag:language.RTORR_REC_BY />
              </td>
              <if:rtorr_del_1>
                <td align="center" class="head">
                  <tag:language.RTORR_REMOVE />
                </td>
              </if:rtorr_del_1>
          </tr>

          <loop:tora>
            <tr>
              <td style="text-align:center;" class="lista">
                <a href="index.php?page=torrents&amp;category=<tag:tora[].catid />">
                  <tag:tora[].image />
              </td>
              <if:usepopup>
                <td class="lista">
                  <a href="javascript:popdetails('index.php?page=torrent-details&amp;id=<tag:tora[].hash />')">
                    <tag:tora[].filename />
                  </a>
                  <if:free_leech_enabled_req>
                    <tag:tora[].free />
                  </if:free_leech_enabled_req>
                  <if:gast_enabled_req>
                    <tag:tora[].gold />
                  </if:gast_enabled_req>
                  <tag:tora[].EXT />
                </td>
                <else:usepopup>
                  <td class="lista">
                    <a href="index.php?page=torrent-details&amp;id=<tag:tora[].hash />">
                      <tag:tora[].filename />
                    </a>
                    <if:free_leech_enabled_req>
                      <tag:tora[].free />
                    </if:free_leech_enabled_req>
                    <if:gast_enabled_req>
                      <tag:tora[].gold />
                    </if:gast_enabled_req>
                    <tag:tora[].EXT />
                  </td>
              </if:usepopup>
              <if:reql3>
                <td style="text-align:center;" class="lista">
                  <tag:tora[].comments />
                </td>
              </if:reql3>
              <td style="text-align:center;" class="lista">
                <a href="<if:dlcheck_enabled>index.php?page=downloadcheck&amp;id=<tag:tora[].hash /><else:dlcheck_enabled>download.php?id=<tag:tora[].hash />&amp;f=<tag:tora[].filename_enc />.torrent</if:dlcheck_enabled>">
                  <tag:tora[].dl_img />
                </a>
              </td>
              <td style="text-align:center;" class="lista">
                <tag:tora[].date />
              </td>
              <tag:tora[].rp17 />
              <tag:tora[].rp18 />
              <td style="text-align:center;" class="lista">
                <tag:tora[].complete />
              </td>
              <if:reql4>
                <td style="text-align:center;" class="lista">
                  <tag:tora[].uploader />
                </td>
                <td style="text-align:center;" class="lista">
                  <tag:tora[].size />
                </td>
                </if:req14>
                <td style="text-align:center;" class="lista">
                  <tag:tora[].recommender />
                </td>
                <if:rtorr_del_2>
                  <td style="text-align:center;" class="lista">
                    <a href="index.php?page=torrents&amp;action=remove&amp;info_hash=<tag:tora[].hash />">
                      <tag:tora[].del_img />
                    </a>
                  </td>
                </if:rtorr_del_2>
            </tr>
          </loop:tora>
        </table>
      </if:rtorr_enabled>
    </div>
  </div>
  <div class="panel-footer">
  </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading">
    <h4 class="text-center">Search</h4>
  </div>
  <ul>
    <div align="center">
      <form action="<tag:torrent_script />" method="get" name="torrent_search">
        <input type="hidden" name="page" value="torrents" />
        <table border="0" class="lista" align="center">
          <if:swit>
            <td class="block" style="text-align:left;">
              <a href='account_change.php?tls=<tag:switch />&amp;returnto=%2Findex.php%3Fpage%3Dtorrents'>
                <div id="div">
                  <button class="btn btn-labeled btn-warning" type="button"><span class="btn-label"><i class="fa fa-cog"></i></span>Layout Switch</button>
                </div>
              </a>
            </td>
          </if:swit>
          <td align=center style="width: 340px;">
            <input type="text" class="form-control input-sm" name="search" id="searchinput" ondblclick="suggest(event.keyCode, this.value, 'torrent');" onkeyup="suggest(event.keyCode, this.value, 'torrent');" onkeypress="return noenter(event.keyCode);"
            autocomplete="off" style="width: 320px;" maxlength="50" value="<tag:torrent_search />" />
            <div id="suggcontainer" style="display: none; padding-left:0px;" align="left">
              <div id="suggestions" style="cursor: default; position: absolute; background-color: #373737; border: 1px solid #7f9db9; border-top: 0px;"></div>
            </div>
          </td>
          <td>
            <select class="form-control" <tag:torrent_categories_combo /></select>
          </td>

          <if:ash_enabled_2>
            <td>
              <select name="options" size="1" class="form-control">
                <option value="0" <tag:torrent_selected_file />>
                <tag:language.FIL />
                </option>
                <option value="1" <tag:torrent_selected_filedes />>
                <tag:language.FILDES />
                </option>
                <option value="2" <tag:torrent_selected_des />>
                <tag:language.DES />
                </option>
                <option value="3" <tag:torrent_selected_upl />>
                <tag:language.UPLS />
                </option>
                <if:imdb_enabled>
                  <option value="18" <tag:torrent_selected_gen />>
                  <tag:language.IMDB_GENRE />
                  </option>
                  <option value="4" <tag:torrent_selected_im />>
                  <tag:language.IMDB_SEARCH />
                  </option>
                </if:imdb_enabled>
                <if:gold_enabled>
                  <option value="5" <tag:torrent_selected_gold />>
                  <tag:language.IS_GOLD />
                  <tag:language.TORRENTS />
                  </option>
                  <!--<option value="19" <tag:torrent_selected_plat />>Platinum Torrents</option> -->
                  <option value="6" <tag:torrent_selected_silver />>
                  <tag:language.IS_SILVER />
                  <tag:language.TORRENTS />
                  </option>
                  <option value="7" <tag:torrent_selected_bronze />>
                  <tag:language.IS_BRONZE />
                  <tag:language.TORRENTS />
                  </option>
                </if:gold_enabled>
                <if:mult_enabled>
                  <option value="8" <tag:torrent_selected_mul1 />>1x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="9" <tag:torrent_selected_mul2 />>2x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="10" <tag:torrent_selected_mul3 />>3x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="11" <tag:torrent_selected_mul4 />>4x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="12" <tag:torrent_selected_mul5 />>5x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="13" <tag:torrent_selected_mul6 />>6x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="14" <tag:torrent_selected_mul7 />>7x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="15" <tag:torrent_selected_mul8 />>8x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="16" <tag:torrent_selected_mul9 />>9x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                  <option value="17" <tag:torrent_selected_mul10 />>10x
                  <tag:language.UPM_UPL_MULT />
                  </option>
                </if:mult_enabled>
              </select>
            </td>
          </if:ash_enabled_2>

          <td>
            <select name="active" size="1" class="form-control">
              <if:arc_enabled>
                <if:new_allowed1>
                  <option value="0" <tag:torrent_selected_all />>
                  <tag:language.ALL /> (
                  <tag:language.ARC_NEW />)</option>
                </if:new_allowed1>
                <if:arc_allowed1>
                  <option value="3" <tag:torrent_selected_all2 />>
                  <tag:language.ALL /> (
                  <tag:language.ARC_ARC />)</option>
                </if:arc_allowed1>
                <if:new_allowed2>
                  <option value="1" <tag:torrent_selected_active />>
                  <tag:language.ACTIVE_ONLY /> (
                  <tag:language.ARC_NEW />)</option>
                </if:new_allowed2>
                <if:arc_allowed2>
                  <option value="4" <tag:torrent_selected_active2 />>
                  <tag:language.ACTIVE_ONLY /> (
                  <tag:language.ARC_ARC />)</option>
                </if:arc_allowed2>
                <if:new_allowed3>
                  <option value="2" <tag:torrent_selected_dead />>
                  <tag:language.DEAD_ONLY /> (
                  <tag:language.ARC_NEW />)</option>
                </if:new_allowed3>
                <if:arc_allowed3>
                  <option value="5" <tag:torrent_selected_dead2 />>
                  <tag:language.DEAD_ONLY /> (
                  <tag:language.ARC_ARC />)</option>
                </if:arc_allowed3>
                <else:arc_enabled>
                  <option value="0" <tag:torrent_selected_all />>
                  <tag:language.ALL />
                  </option>
                  <option value="1" <tag:torrent_selected_active />>
                  <tag:language.ACTIVE_ONLY />
                  </option>
                  <option value="2" <tag:torrent_selected_dead />>
                  <tag:language.DEAD_ONLY />
                  </option>
              </if:arc_enabled>
            </select>
          </td>
          <td>
            <button class="btn btn-anchor btn-labeled btn-primary" type="submit"><span class="btn-label"><i class="fa fa-search"></i></span>
              <tag:language.SEARCH />
            </button>
          </td>
          </tr>
        </table>
      </form>
    </div>
  </ul>
  <div class="panel-footer">
  </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading">
    <h4 class="text-center">Torrents</h4>
  </div>
  <center>
    <h4>Torrent Activity Colors Legend</h4></center>
  <center>
    <button type="button" class="btn btn-success" data-container="body" data-toggle="popover" data-placement="left" data-content="You are seeding!" data-original-title="" title="">
      Seeding
    </button>
    <button type="button" class="btn btn-danger" data-container="body" data-toggle="popover" data-placement="top" data-content="You are leeching!" data-original-title="" title="">
      Leeching
    </button>
    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="bottom" data-content="You have snatched this!" data-original-title="" title="">
      Snatched
    </button>
  </center>
  </br>
  <table class="table table-bordered">
    <tr>
      <td align="center" width="45" class="header">Category</td>
      <td align="center" class="header">Sort By: &nbsp;
        <tag:torrent_header_added />|
        <tag:torrent_header_seeds />|
        <tag:torrent_header_leechers />|
        <tag:torrent_header_complete />|<a href="/index.php?page=torrents&amp;active=0&amp;gold=0&amp;order=4&amp;by=2">Size</a></td>
      <if:usacotl1>
      </if:usacotl1>

      <if:WT>
        <td align="center" width="20" class="header">
          <tag:torrent_header_waiting />
        </td>
        <else:WT>
      </if:WT>
      <if:usacotl2>
        <if:show_uploader1>
        </if:show_uploader1>
      </if:usacotl2>
      <td align="center" width="3" class="header">Cover/Poster</td>
      <if:show_recommended_1>
        <td align="center" width="3" class="header">Recommend</td>
      </if:show_recommended_1>
    </tr>
    <loop:torrents>
      <tag:torrents[].dt />
      <tr>
        <td align="center" width="125" class="lista" style="text-align: center;<if:sticky_enabled_1><tag:torrents[].color /></if:sticky_enabled_1>">
          <tag:torrents[].category />&nbsp;&nbsp;</td>
        <td class="lista" valign="middle" style="padding-left:10px;overflow:auto;<if:sticky_enabled_2><tag:torrents[].color /></if:sticky_enabled_2>"><b style="font-size: 16px;"><tag:torrents[].filename /></b>&nbsp;&nbsp;

          <p>
            <b>Uploader:</b> &nbsp;
            <tag:torrents[].uploader /> <!-- | <b>Release Group:</b> &nbsp;&nbsp;&nbsp;
            <tag:torrents[].RG /> -->
          </p>
          <p>
            <b>Size:</b> &nbsp;
            <tag:torrents[].size />
          </p>
          <!--<p>
            <b>Files:</b> &nbsp;
            <tag:torrents[].files />
          </p>-->
          <p>
            <b>Language:</b> &nbsp;
            <tag:torrents[].language />
          </p>
          <p>
            <b>Genre:</b> &nbsp;
            <tag:torrents[].blu_genre />
          </p>
          <p>
            <b>Added:</b> &nbsp;
            <tag:torrents[].alt_added />
          </p>
          <p>
            <b>Seeds:</b> &nbsp;
            <tag:torrents[].seeds />&nbsp; <b>Leechers:</b> &nbsp;
            <tag:torrents[].leechers />&nbsp; <b>Complete:</b> &nbsp;
            <tag:torrents[].complete />&nbsp;
          </p>
          <p>
            <b>Comments:</b> &nbsp;&nbsp;&nbsp;
            <tag:torrents[].comments />&nbsp;&nbsp; <b>|</b> &nbsp;&nbsp;<b>IMDB Rating:</b>&nbsp;&nbsp;
            <tag:torrents[].blu_rating />&nbsp;&nbsp;&nbsp; <b>|</b> &nbsp;&nbsp; <b>Tags:</b>
            <tag:torrents[].bon />
            <if:free_leech_enabled>
              <tag:torrents[].free />
            </if:free_leech_enabled>
            <if:gast_enabled>&nbsp;
              <tag:torrents[].gold />
            </if:gast_enabled> &nbsp;&nbsp; <b>|</b> &nbsp;&nbsp; <span><tag:torrents[].bookmark /></span> &nbsp;&nbsp; <b>|</b> &nbsp;&nbsp;
            <tag:torrents[].download />
          </p>
        </td>
        <td align="center" width="3" class="lista" style="text-align: center;"><img src="<tag:torrents[].blu_poster />" width="125" height="170"></td>
<if:show_recommended_2>
<td align="center" width="3" class="lista" style="text-align: center;"><tag:torrents[].recommended /></td>
</if:show_recommended_2>
</tr>
</loop:torrents>
</table>
</td>
</tr>
<tr>
  <td colspan="2" align="center"> <tag:torrent_pagerbottom /></td>
</tr>
</div>
</div>

