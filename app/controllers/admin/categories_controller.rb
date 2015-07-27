class Admin::CategoriesController < BaseController
def fictional	   
    @cat = Category.find_by(name: 'Fictional')
    @articles = @cat.articles.paginate( :page => params[:page], :per_page => 5).order('id DESC')
     
    end

def factual   
    @cat = Category.find_by(name: 'Factual')
    @articles = @cat.articles.paginate( :page => params[:page], :per_page => 5).order('id DESC')
    end

def political 	
    @cat = Category.find_by(name: 'Political')
    @articles = @cat.articles.paginate(:page => params[:page], :per_page => 5).order('id DESC')
    end

def social	    
    @cat = Category.find_by(name: 'Social')
    @articles = @cat.articles.paginate( :page => params[:page], :per_page => 5).order('id DESC')
    end

def commercial	
    @cat = Category.find_by(name: 'Commercial')
    @articles = @cat.articles.paginate(:page => params[:page], :per_page => 5).order('id DESC')
    end

def technical 	    
    @cat = Category.find_by(name: 'Technical')
    @articles = @cat.articles.paginate( :page => params[:page], :per_page => 5).order('id DESC')
    end
end


