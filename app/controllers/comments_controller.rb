class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
     

 end

  # GET /comments/new
  def new
    @comment = Comment.new
    
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    
      @comment = Comment.new(comment_params)
    # @comment= @event.comments.create(:event_id=>params[:id],:description=>params["comment"]["description"]) 
     if params["comment"]["program_id"].present?                                                                                                                                                                                
        @c=Program.find(params["comment"]["program_id"]).comments.all
        @comment= Program.find(params["comment"]["program_id"]).comments.create(:description=>params["comment"]["description"])
        @program=Program.find(params["comment"]["program_id"])
        redirect_to @program
    else
       @comment= Event.find(params["comment"]["event_id"]).comments.create(:description=>params["comment"]["description"])
       @c=Event.find(params["comment"]["event_id"]).comments.all
       @event=Event.find(params["comment"]["event_id"])
        redirect_to @event
    end
    #     respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @comment }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:description, :program_id, :event_id)
    end
end
