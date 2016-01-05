class VisitorsController < ApplicationController

  before_action { flash.clear }

  def authenticate

    render html: '
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Conecte-se com o Facebook</h4>
            </div>
            <div class="modal-body">

            <p class="modal-connect-facebook">
              Para começar a Cariocar você precisar clicar no botão abaixo para <strong>Conectar com Facebook</strong>
            </p>

            <a href="/auth/signin" class="btn btn-lg btn-block omb_btn-facebook">
              <i class="fa fa-facebook-official"></i>
              <span>Conectar com Facebook</span>
              <strong>Começar agora o Jogo</strong>
            </a>

            <small>* Não se preocupe, nunca publicaremos ou faremos nada sem a sua autorização.</small>

            </div>
        </div>'.html_safe

  end

  def about

  end

  def byebye

    @users = User.search params[:q],1

    @totalUsers = @users.total_count;

  end

end
