          <div class="col-md-spark">
              <p class="overview">My Hashrate {$GLOBAL.hashunits.personal}</p>
              <span class="overview">{$GLOBAL.userdata.hashrate|number_format:"2"}</span>
              <br>
              <span class="personal-hashrate-bar"></span>
          </div>
          <div class="col-md-spark">
              <p class="overview">My Sharerate</p>
              <span class="overview">{$GLOBAL.userdata.sharerate|number_format:"2"}</span>
              <br>
              <span class="personal-sharerate-bar"></span>
          </div>
          <div class="col-md-spark">
              <p class="overview">Pool Hashrate {$GLOBAL.hashunits.pool}</p>
              <span class="overview">{$GLOBAL.hashrate|number_format:"2"}</span>
              <br>
              <span class="pool-hashrate-bar"></span>
          </div>
          <div class="col-md-spark">
              <p class="overview">Pool Workers</p>
              <span class="overview">{$GLOBAL.workers}</span>
              <br>
              <span class="pool-workers-bar"></span>
          </div>
          <div class="col-md-spark">
              <p class="overview">Net Hashrate {$GLOBAL.hashunits.pool}</p>
              <span class="overview">{$GLOBAL.nethashrate|number_format:"2"}</span>
              <br>
              <span class="pool-nethashrate-bar"></span>
          </div>
          <div class="col-md-spark">
              <p class="overview">{$GLOBAL.config.currency}/{$GLOBAL.config.price.currency}</p>
              <span class="overview">{$GLOBAL.price|default:"0"|number_format:"8"}</span>
              <br>
              <span class="coin-price-line"></span>
          </div>
