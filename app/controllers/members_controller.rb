class MembersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_member, only: [:show, :edit, :update, :destroy, :member_tasks]
  
    # GET /members
    # GET /members.json
    def index
      @members = current_user.members
    end
  
    # GET /members/1
    def show
    end
  
    # GET /members/new
    def new
      @member = current_user.members.build
    end
  
    # GET /members/1/edit
    def edit
    end
  
    # POST /members
    # POST /members.json
    def create
      @member = current_user.members.build(member_params)
  
      respond_to do |format|
        if @member.save
          format.html { redirect_to members_path, notice: 'Member was successfully added.' }
        else
          format.html { render :new }
        end
      end
    end
  
    # PATCH/PUT /members/1
    # PATCH/PUT /members/1.json
    def update
      respond_to do |format|
        if @member.update(member_params)
          format.html { redirect_to members_path, notice: 'Member was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  
    # DELETE /members/1
    # DELETE /members/1.json
    def destroy
      @member.destroy
      respond_to do |format|
        format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


    # members tasks
    def member_tasks
      @tasks = @member.tasks.paginate(:page => params[:page], :per_page => 5)
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_member
        @member = Member.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def member_params
        params.require(:member).permit(:name, :user_id)
      end
  end
  