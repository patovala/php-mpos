  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-desktop fa-fw"></i> Account Information</h4>
      </div>
      <div class="panel-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            You are mining without any pool fees applied and
    {else if $GLOBAL.fees > 0}
            You are mining at <font color="orange">{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}%</font> pool fee and
    {else}
            This pool does not apply fees and
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            you donate <font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>.
    {else}
            you are not <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">donating</a>.
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr><th colspan="2">{$GLOBAL.config.currency} Account Balance</th></tr>
          </thead>
          <tbody>
            <tr>
              <th>Confirmed</th>
              <th>
                <span class="confirmed" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}</span>
              </th>
            </tr>
            <tr>
              <th>Unconfirmed</th>
              <th>
                <span class="unconfirmed" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}</span>
              </th>
            </tr>
          </tbody>
        </table>
        {if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
        <table class="table table-bordered table-hover table-striped"> 
         <thead>
          <tr>
            <th>Worker</th>
            <th>Hashrate</th>
            <th>Difficulty</th>
          </tr>
          </thead>
          <tbody id="b-workers">
            <td colspan="3" class="text-center">No worker information available</td>
          </tbody>
          </tr>
        </table>
        {/if}
      </div>
    </div>
  </div>